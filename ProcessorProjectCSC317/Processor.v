//Processor Main
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module Processor (
	//input ROM1, //READ ONLY MEMORY, where all our instructions will be stored
	input wire [31:0] ROM_Out,
	input wire PC_Reset,
	input wire MEM_Read,
	input wire [4:0] Display_Select,// switch[4:0]
	input wire Display_Enable,
   input wire ProcessorReset, 	// Resets the processor to initial state
	input wire ProcessorEnable, 	// Run switch 
	input wire Clock,
	output wire OperationFinished,
	output wire TestLight,
	output wire [31:0] ROM_Address_Select,
	output wire [31:0] HexDisplay
);


assign OperationFinished=ProcessorEnable;// Just to make sure the processor is working...


//[Fetch]
	// InstructionAddressGenerator
		reg PC_Select,PC_Enable,INC_Select;
		reg [31:0]BranchOffset;
		wire [31:0]PC, PC_Temp;
//[Decode]
			wire [31:0]RA_In, RB_In, RZ_In, RM_In, RY_In;
			wire [31:0]RA_Out, RB_Out, RZ_Out, RM_Out, RY_Out;
			reg_32b RA (.R(RA_In), .Enable(RA_Enable), .Clock(Clock), .Q(RA_Out));// IN(REGFILE) -> OUT(ALU)
			reg_32b RB (.R(RB_In), .Enable(RB_Enable), .Clock(Clock), .Q(RB_Out));// IN(REGFILE) -> OUT(ALU)
			reg_32b RZ (.R(RZ_In), .Enable(RZ_Enable), .Clock(Clock), .Q(RZ_Out));// IN(ALU) -> OUT(MEMORY || MUXY)
			reg_32b RM (.R(RM_In), .Enable(RM_Enable), .Clock(Clock), .Q(RM_Out));// IN(ALU) -> OUT(MEMORY, Indirectly MUXY)  // Like RB_Temp..... but goes into memory
			//MUXY
			reg_32b RY (.R(RY_In), .Enable(RY_Enable), .Clock(Clock), .Q(RY_Out));// IN(MUXY) -> OUT(REGFILE)
	//Register File
		wire [4:0]RF_a, RF_b, RF_c;
		wire RF_WRITE;
	//Decode Instruction
		wire [1:0] InstructionFormat;
		wire [31:0] OP_Code, IMMEDIATE_OPPERAND ;
//[Execute]
	// Condition Control Register
	//CCR 32-Bit Format [...IFNR, INR , N, Z, V, C]
	//CCR [... Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]	
	reg_32b CCR (.R({17'b0,IFNR_FLAG, INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG}), .Enable(CCR_Enable), .Clock(Clock), .Q(CCR_Out));// IN(ALU || Decode) -> OUT(USER)
																								 
	// Internal Registers // FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
	wire IFNR_FLAG, // Instruction Format Not Recognized ... Driven From DecodeInstruction
		  INR_FLAG,  // Instruction Not Recognized ... Driven From ALU
		  ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG;// Five Flags

//Control Signals
always@(Clock)begin
//[Fetch]
	// InstructionAddressGenerator
		PC_Select=1; //(PC_select) Increment PC "0"->jump to "RA" .... "1"->inc by MuxINC  // MuxPC = PC_select ? NextAdd: RA
		PC_Enable=1;
		INC_Select=0; //(INC_select) Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
		BranchOffset=32'hF0F0;
end

// Wires

	//[Decode]
		assign RF_WRITE=1;//When would we NOT want to write back to the REGISTER FILE
		assign RA_Enable=1;
		assign RB_Enable=1;
		assign RZ_Enable=1;
		assign RM_Enable=1;
		assign RY_Enable=1;
	// Read Only Memory
		wire [31:0] Instruction;
		assign ROM_Address_Select = PC; // The Program Counter Tells Us Which Address To Look In ROM...
		assign Instruction = ROM_Out; // We get our instructions from the ROM File
	// Condition Control Flags
		assign INR_FLAG=1;
		assign OVERFLOW_FLAG=0;
		assign NEGATIVE_FLAG=1;
		assign CARRY_FLAG=0;


//[Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch]
//STAGE#(1) [Instruction Fetch]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

		

	InstructionAddressGenerator InstAddGen(.BranchOff(BranchOffset),.RA(RA_Out),.PC_select(PC_Select),.PC_enable(PC_Enable),.INC_select(INC_Select),.Clock(Clock),.PC_temp(PC_Temp),.PC(PC),.PC_Reset(PC_Reset));

//-------------------------------------------------------------------------------------------------------------------------

//[Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode]
//STAGE#(2) [Source Registers]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


	RegisterFile RegFile(.Rsrc1(RF_a),.Rsrc2(RF_b),.Rdst(RF_c),.RA(RA_In),.RB(RB_In),.RY(RY_Out),.clk(Clock),.RF_WRITE(RF_WRITE));
	
	DecodeInstruction DecodeInst(.Instruction(Instruction),.InstructionFormat(InstructionFormat),.Rsrc1(RF_a),.Rsrc2(RF_b),.Rdst(RF_c),.OP_Code(OP_Code),.IFNR_FLAG(IFNR_FLAG),.IMMEDIATE_OPPERAND(IMMEDIATE_OPPERAND));

//-------------------------------------------------------------------------------------------------------------------------

//[Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute]
//STAGE#(3) [ALU]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

	//ALU
	//ConditionControlRegister
	assign RZ_In=RA_Out+RB_Out;
	assign RM_In=RB_Out;
	
//-------------------------------------------------------------------------------------------------------------------------

//[Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory]
//STAGE#(4) [Memory Access]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	//Interface with MEM
	//memory MEM(.address(), .dataIn(), .dataOut(), .MFC());

//-------------------------------------------------------------------------------------------------------------------------

//[Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back]
//STAGE#(5) [Destination Register]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	
//-------------------------------------------------------------------------------------------------------------------------

//Display Unit For Debugging And Validation
DisplayMux displayAll(
	//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.Display_Select(Display_Select[4:0]),
		.Display_Enable(Display_Enable),
		.PC(PC[31:0]),
		.PC_Temp(PC_Temp),
		.IR(16'hFFFF),
		.RA(RA_Out[31:0]),
		.RB(RB_Out[31:0]),
		.RZ(RZ_Out[31:0]),
		.RM(RM_Out[31:0]),
		.RY(RY_Out[31:0]),
		.RF_a(RF_a),
		.RF_b(RF_b),
		.RF_c(RF_c),
		.BranchOffset(BranchOffset[31:0]),
		.ROM_Out(ROM_Out[31:0]),
		.PC_Select(PC_Select),
		.PC_Enable(PC_Enable),
		.INC_Select(INC_Select),
		.CCR_Out(CCR_Out),
		.OP_Code(OP_Code),
		.IMMEDIATE_OPPERAND(IMMEDIATE_OPPERAND),
	
	//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.HexDisplay32Bits(HexDisplay)
	);


endmodule