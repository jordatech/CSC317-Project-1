//Processor Main
//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module Processor (
	//input ROM1, //READ ONLY MEMORY, where all our instructions will be stored
	input wire [31:0] ROM_Out,
	input wire PC_Reset,
	input wire [4:0] Display_Select,// switch[4:0]
	input wire Display_Enable,
   input wire ProcessorReset, 	// Resets the processor to initial state
	input wire ProcessorEnable, 	// Run switch 
	input wire Clock,
	output wire ROM_Read,
	output wire OperationFinished,
	output wire TestLight,
	output wire [31:0] ROM_Address_Select,
	output wire [31:0] HexDisplay
);

	  
// Control Signals And Declare Components  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	 //[Fetch]*************************************************
		//Instruction Register
			wire 				IR_Enable;
			wire [31:0] 	IR_In;
			wire [31:0] 	IR_Out, Instruction;
		// Immediate Block = "Decode Instruction"
			wire 				Extend, 
								NOP_FLAG,// No Operation // Do nothing For 5 Cycles ... Driven From DecodeInstruction
								IFNR_FLAG;// Instruction Format Not Recognized ... Driven From DecodeInstruction
		// Instruction Address Generator // Program Counter
			wire [2:0] 		ClockCount;
			wire [31:0]		PC;
			wire [31:0]		Return_Address; //PC_temp
			wire 				PC_Enable, PC_Select, INC_Select;
			wire [31:0] 	BranchOffset;
		// MuxC
			wire C_Select;
			wire [4:0] 		MuxC_Out;
			// Link Register
				reg [4:0] 	LINK;
			// Destination Register
				wire [4:0] 	Rdst;
		// Register File
			wire 				RF_WRITE; 
			wire [4:0] 		Rsrc1, Rsrc2;

		
	 //[Decode]*************************************************
		// ALU Input Registers
			wire 				RA_Enable, RB_Enable;
			wire [31:0] 	RA_In, RB_In;
			wire [31:0] 	RA_Out, RB_Out;
		// MuxB
			wire 				B_Select;
			wire [31:0] 	MuxB_Out;
			
	 //[Execute]*************************************************
		// ALU
			wire [1:0] 		InstructionFormat; 
			wire [31:0] 	OP_Code, IMMEDIATE_Decoded;
			// FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
				wire 			INR_FLAG,  // Instruction Not Recognized ... Driven From ALU
								ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG;// Four Default CCR Flags FROM ALU
		// ALU Output Register
			wire 				RZ_Enable;
			wire [31:0] 	RZ_In;
			wire [31:0] 	RZ_Out;
	  // Condition Control Register
			wire 				CCR_Enable;
			wire [31:0] 	CCR_Out;
			
	 //[Memory]*************************************************
		// Memory Data Register
			wire 				RM_Enable;
			wire [31:0] 	RM_In;
			wire [31:0] 	RM_Out;
		// Memory Address Register
			//wire RZ_Enable;
		// MuxMA // Memory Address
			wire 				MA_Select;
			wire [31:0] 	MA_Out;
		// Random Access Memory
			wire [31:0] 	MEM_Address, MEM_In, MEM_Out; 
			wire 				MFC, MEM_Read_H_Write_L;	
		// Read Only Memory
			//wire 			ROM_Read;
			//wire [31:0]	ROM_Out;// We get our instructions from the ROM File
			//wire [31:0] 	ROM_Address_Select;
			
	 //[Write Back]*************************************************
		// Final Output Register
			wire 				RY_Enable;
			wire [31:0] 	RY_In;
			wire [31:0] 	RY_Out;
		// MuxY
			wire [1:0] 		Y_Select;
			wire [31:0] 	MuxY_Out;

			


// Declare Modules------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//[Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch][Fetch]
//STAGE#(1) [Instruction Fetch]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	// Instruction Register
		reg_32b IR (.R(IR_In), .Enable(IR_Enable), .Clock(Clock), .Q(IR_Out));// Instruction Register
		assign Instruction=IR_Out;// We get our instructions from the ROM File// Rename wire for convenience
	// Program Counter
		InstructionAddressGenerator InstAddGen(.BranchOff(BranchOffset),.RA(RA_Out),.PC_select(PC_Select),.PC_enable(PC_Enable),.INC_select(INC_Select),.Clock(Clock),.PC_temp(Return_Address),.PC(PC),.PC_Reset(PC_Reset));
	// MuxC
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(2)) 
		MuxC(.Select(C_Select),.Out(MuxC_Out),.ConcatanatedInputs({LINK,IMMEDIATE_Decoded,RB_Out}));// C_Select[2,1,0]
		
//-------------------------------------------------------------------------------------------------------------------------

//[Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode]
//STAGE#(2) [Source Registers]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	// ALU Input Registers
		reg_32b RA (.R(RA_In), .Enable(RA_Enable), .Clock(Clock), .Q(RA_Out));// IN(REGFILE) -> OUT(ALU)
		reg_32b RB (.R(RB_In), .Enable(RB_Enable), .Clock(Clock), .Q(RB_Out));// IN(REGFILE) -> OUT(ALU)
	// MuxB
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(2)) 
		MuxB(.Select(B_Select),.Out(MuxB_Out),.ConcatanatedInputs({IMMEDIATE_Decoded,RB_Out}));// B_Select[1,0]
	//Register File
		RegisterFile RegFile(.Rsrc1(Rsrc1),.Rsrc2(Rsrc2),.MuxC_Out_Rdst(MuxC_Out),.RA(RA_In),.RB(RB_In),.RY(RY_Out),.clk(Clock),.RF_WRITE(RF_WRITE));
	// Control Signal Generator
		//ControlSignalGenerator ControlSigGen();
		
//-------------------------------------------------------------------------------------------------------------------------

//[Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute]
//STAGE#(3) [ALU]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	// ALU
		ArithmeticLogicalUnit ALU1(.InstructionFormat(InstructionFormat),.Clock(Clock),.Instruction(Instruction),.RA(RA_Out),.RB(MuxB_Out),
		.RZ(RZ_In),.INR_FLAG(INR_FLAG),.ZERO_FLAG(ZERO_FLAG),.OVERFLOW_FLAG(OVERFLOW_FLAG),.NEGATIVE_FLAG(NEGATIVE_FLAG),.CARRY_FLAG(CARRY_FLAG),.NOP_FLAG(NOP_FLAG));
	// ALU Output Register // Memory Address Register
		reg_32b RZ (.R(RZ_In), .Enable(RZ_Enable), .Clock(Clock), .Q(RZ_Out));// IN(ALU) -> OUT(MEMORY || MuxY)
  // Condition Control Register
	  // CCR 32-Bit Format [...NOP, IFNR, INR , N, Z, V, C]
	  // CCR [... No Operation, Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]	
		reg_32b CCR (.R({NOP_FLAG, IFNR_FLAG, INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG}), .Enable(CCR_Enable), .Clock(Clock), .Q(CCR_Out));// IN(ALU || Decode) -> OUT(USER)
					

//-------------------------------------------------------------------------------------------------------------------------

//[Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory]
//STAGE#(4) [Memory Access]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	// Memory Data Register
		reg_32b RM (.R(RM_In), .Enable(RM_Enable), .Clock(Clock), .Q(RM_Out));// IN(ALU) -> OUT(MEMORY, Indirectly MuxY)  // Like RB_Temp..... but goes into memory
	// MuxMA
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(2)) 
		MuxMA(.Select(MA_Select),.Out(MuxMA_Out),.ConcatanatedInputs({PC,RZ}));// MA_Select[1,0]
	// Memory Address 
		assign ROM_Address_Select=PC;
	// RAM
		//RandomAccessMemory RAM1(.MEM_Address(MuxMA_Out), .MEM_In(RM_Out), .MEM_Out(MEM_Out), .MemoryFunctionComplete(MFC),.Read_H_Write_L(MEM_Read_H_Write_L));
	// Memory Data
		assign RM_In=RB_Out; // Memory Register is one cycle behind RB
	
	
//-------------------------------------------------------------------------------------------------------------------------

//[Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back]
//STAGE#(5) [Destination Register]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	
	// MuxY
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(3)) 
		MuxY(.Select(Y_Select),.Out(MuxY_Out),.ConcatanatedInputs({Return_Address,MEM_Out,RZ_Out}));// Y_Select[2,1,0]
	// Final Output Register
		reg_32b RY (.R(RY_In), .Enable(RY_Enable), .Clock(Clock), .Q(RY_Out));// IN(MuxY) -> OUT(REGFIL
		assign RY_In=MuxY_Out;
	
//-------------------------------------------------------------------------------------------------------------------------


wire [31:0]RAND_In,RAND_Out;
wire RAND_Enable;
assign RAND_Enable=1;
assign RAND_In[31:0]=ProcessorEnable;
assign OperationFinished=RAND_Out[0];
reg_32b RAND (.R(RAND_In), .Enable(RAND_Enable), .Clock(Clock), .Q(RAND_Out));// !!! RANDOM TESTING



//Display Unit For Debugging And Validation
DisplayMux displayAll(
	//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.Display_Select(Display_Select[4:0]),
		.Display_Enable(Display_Enable),
		.PC(PC[31:0]),
		.PC_Temp(PC_Temp),
		.IR_Out(IR_Out),
		.RA(RA_Out[31:0]),
		.RB(RB_Out[31:0]),
		.RZ(RZ_Out[31:0]),
		.RM(RM_Out[31:0]),
		.RY(RY_Out[31:0]),
		.RF_a(Rsrc1),
		.RF_b(Rsrc2),
		.RF_c(Rdst),
		.BranchOffset(BranchOffset[31:0]),
		.ROM_Out(ROM_Out[31:0]),
		.PC_Select(PC_Select),
		.PC_Enable(PC_Enable),
		.INC_Select(INC_Select),
		.CCR_Out(CCR_Out),
		.OP_Code(OP_Code),
		.IMMEDIATE_Decoded(IMMEDIATE_Decoded),
		.ClockCount(ClockCount),
		.InstructionFormat(InstructionFormat),
		
	//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.HexDisplay32Bits(HexDisplay)
	);


endmodule