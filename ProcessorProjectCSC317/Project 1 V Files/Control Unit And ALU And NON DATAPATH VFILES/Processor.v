//Processor Main
//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module Processor (
	input wire PC_Reset,
	input wire [4:0] Display_Select,// switch[4:0]
	input wire [4:0] RegFileView_Select,// switch[17:13]
	input wire Display_Enable,
	input wire Clock,
	output wire [31:0] HexDisplay,
	output reg  [6:0] GreenLEDs,
		// Memory Wires
			// Inputs
				input wire[31:0]  MEM_Data_Out,
				input wire			MEM_MFC, MEM_ANA_FLAG, //Address Not Assigned
			// Outputs
				output wire[31:0]	MEM_Address, MEM_Data_In, // WORD ADDRESSABLE
				output wire 		MEM_Read, MEM_Write

			
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
			wire [2:0] 		Stage;
			wire [31:0]		PC_Out;
			wire [31:0]		Return_Address; //PC_temp
			wire 				PC_Enable, PC_Select, INC_Select;
			//wire [31:0] 	BranchOffset;//= ImmediateBlock_Out
		// MuxC
			wire [1:0]		C_Select;
			wire [4:0] 		MuxC_Out;
			// Link Register
				reg [4:0] 	LINK;
			// Destination Register
				wire [4:0] 	Rdst;
		// Register File
			wire 				RF_WRITE; 
			wire [4:0] 		Rsrc1, Rsrc2;
			wire [31:0]		RegFileRegisterToView; //Debugging Tool

		
	 //[Decode]*************************************************
		//  Input Registers
			wire 				RA_Enable, RB_Enable;
			wire [31:0] 	RA_In, RB_In;
			wire [31:0] 	RA_Out, RB_Out;
		// MuxB
			wire 				B_Select;
			wire [31:0] 	MuxB_Out;
			
	 //[Execute]*************************************************
		// 
			wire [1:0] 		InstructionFormat; 
			wire [31:0] 	Instruction_Immediate,Instruction_OP_Code, ALU_Op, ImmediateBlock_Out;
			// FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
				wire 			INR_FLAG,  // Instruction Not Recognized ... Driven From 
								ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG;// Four Default CCR Flags FROM 
		//  Output Register
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
		reg_32b IR (.R(IR_In), .Rin(IR_Enable), .Clock(Clock), .Q(IR_Out));// Instruction Register
		//assign Instruction = IR_Out;// We get our instructions from the ROM File// Rename wire for convenience
	// Immediate Block
		ImmediateBlock ImmediateBlock1(.IR(IR_Out), .clk(Clock), .Extend(Extend), .ImmediateBlock_Out(ImmediateBlock_Out));
	// Program Counter
		InstructionAddressGenerator InstAddGen(.BranchOff(ImmediateBlock_Out),.RA(RA_Out),.PC_select(PC_Select),.PC_enable(PC_Enable)
		,.INC_select(INC_Select),.Clock(Clock),.PC_temp(Return_Address),.PC(PC_Out),.PC_Reset(PC_Reset));
		//InstAddGen(BranchOff,RA,PC_select,PC_enable,INC_select,Clock,PC_temp,PC)// Just Added PC_Reset
	// MuxC
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(3)) 
		MuxC(.Select(C_Select[1:0]),.Out(MuxC_Out),.ConcatanatedInputs({LINK,{27'b0,IR_Out[21:17]},{27'b0,IR_Out[26:22]}}));// C_Select[2,1,0] = {LINK,{27'b0,IR_Out[21:17]},{27'b0,IR_Out[26:22]}}
		
//-------------------------------------------------------------------------------------------------------------------------

//[Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode][Decode]
//STAGE#(2) [Source Registers]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	// Input Registers
		reg_32b RA (.R(RA_In), .Rin(RA_Enable), .Clock(Clock), .Q(RA_Out));// IN(REGFILE) -> OUT()
		reg_32b RB (.R(RB_In), .Rin(RB_Enable), .Clock(Clock), .Q(RB_Out));// IN(REGFILE) -> OUT()
	// MuxB
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(2)) 
		MuxB(.Select(B_Select),.Out(MuxB_Out),.ConcatanatedInputs({ImmediateBlock_Out,RB_Out}));// B_Select[1,0] = {ImmediateBlock_Out,RB_Out}
	// Register File
		RegisterFile RegFile(.Rsrc1(IR_Out[31:27]),.Rsrc2(IR_Out[26:22]),.Rdst(MuxC_Out),.RA(RA_In),.RB(RB_In),
		.RY(RY_Out),.clk(Clock),.RF_WRITE(RF_WRITE),.RegFileView_Select(RegFileView_Select[4:0]),.RegFileRegisterToView(RegFileRegisterToView[31:0]));
	// Control Signal Generator
		ControlSignalGenerator CSG(
			//Inputs
				.Instruction(IR_Out),.Clock(Clock),
			//Outputs
				.Stage(Stage),.IR_Enable(IR_Enable),.Extend(Extend),.NOP_FLAG(NOP_FLAG),.IFNR_FLAG(IFNR_FLAG),.PC_Enable(PC_Enable),.PC_Select(PC_Select),
				.INC_Select(INC_Select),.RF_WRITE(RF_WRITE),.Instruction_Rsrc1(Instruction_Rsrc1),.Instruction_Rsrc2(Instruction_Rsrc2),
				.Instruction_Immediate(Instruction_Immediate),.Instruction_Rdst(Instruction_Rdst),.C_Select(C_Select),.RA_Enable(RA_Enable)
				,.RB_Enable(RB_Enable),.B_Select(B_Select),.Instruction_Format(Instruction_Format),.Instruction_OP_Code(Instruction_OP_Code),
				.ALU_Op(ALU_Op),.RZ_Enable(RZ_Enable),.RM_Enable(RM_Enable),.MA_Select(MA_Select),
				.MEM_MFC(MEM_MFC),
				.MEM_ANA_FLAG(MEM_ANA_FLAG),
				.MEM_Read(MEM_Read),
				.MEM_Write(MEM_Write),
				.Y_Select(Y_Select),.RY_Enable(RY_Enable)
				);
	// Stage Progress Bar (What Stage Am I In?)
		always@(Stage)begin
			case(Stage)
				1: GreenLEDs=6'b1;
				2: GreenLEDs=6'b11;
				3: GreenLEDs=6'b111;
				4: GreenLEDs=6'b1111;
				5: GreenLEDs=6'b11111;
				default: GreenLEDs=6'b101010;
			endcase
		end
			
			
//-------------------------------------------------------------------------------------------------------------------------

//[Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute][Execute]
//STAGE#(3) []+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	// 
		ArithmeticLogicalUnit ALU(.Clock(Clock),.ALU_Op(ALU_Op),.RA(RA_Out),.RB(MuxB_Out),.RZ(RZ_In),.CCR_Enable(CCR_Enable),.INR_FLAG(INR_FLAG),
		.ZERO_FLAG(ZERO_FLAG),.OVERFLOW_FLAG(OVERFLOW_FLAG),.NEGATIVE_FLAG(NEGATIVE_FLAG),.CARRY_FLAG(CARRY_FLAG),.NOP_FLAG(NOP_FLAG));
	//  Output Register // Memory Address Register
		reg_32b RZ (.R(RZ_In), .Rin(RZ_Enable), .Clock(Clock), .Q(RZ_Out));// IN() -> OUT(MEMORY || MuxY)
  // Condition Control Register
	  // CCR 32-Bit Format [...NOP, IFNR, INR , N, Z, V, C]
	  // CCR [... No Operation, Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]	
		reg_32b CCR (.R({NOP_FLAG, IFNR_FLAG, INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG}),
		.Rin(CCR_Enable), .Clock(Clock), .Q(CCR_Out));// IN( || Decode) -> OUT(USER)
					

//-------------------------------------------------------------------------------------------------------------------------

//[Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory][Memory]
//STAGE#(4) [Memory Access]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	// Memory Data Register
		reg_32b RM (.R(RM_In), .Rin(RM_Enable), .Clock(Clock), .Q(RM_Out));// IN() -> OUT(MEMORY, Indirectly MuxY)  // Like RB_Temp..... but goes into memory
	// MuxMA
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(2)) 
		MuxMA(.Select(MA_Select),.Out(MuxMA_Out),.ConcatanatedInputs({PC_Out,RZ_Out}));// (MA_Select) [1,0] = {PC_Out,RZ_Out}//??????? MAY NEED TO CONCATINATE WITH CHOSE RAM OR ROM
	// Memory Data
		assign RM_In = RB_Out; // Memory Register is one cycle behind RB
	// Memory Interface
		assign MEM_Address = MuxMA_Out;
		assign MEM_Data_In = RM_Out; // WORD ADDRESSABLE
		assign IR_In = MEM_Data_Out;
	
//-------------------------------------------------------------------------------------------------------------------------

//[Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back][Write Back]
//STAGE#(5) [Destination Register]+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	
	
	// MuxY
		Muxn #(.WidthOfInputs(32),.NumberOfInputs(3)) 
		MuxY(.Select(Y_Select),.Out(MuxY_Out),.ConcatanatedInputs({Return_Address,MEM_Data_Out,RZ_Out}));// (Y_Select) [2,1,0] = {Return_Address,MEM_Data_Out,RZ_Out}
	// Final Output Register
		reg_32b RY (.R(RY_In), .Rin(RY_Enable), .Clock(Clock), .Q(RY_Out));// IN(MuxY) -> OUT(REGFIL
		assign RY_In=MuxY_Out;
	
//-------------------------------------------------------------------------------------------------------------------------




//Display Unit For Debugging And Validation
DisplayMux displayAll(
	//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.Display_Select(Display_Select[4:0]),
		.Display_Enable(Display_Enable),
		.PC(PC_Out[31:0]),
		.PC_Temp(PC_Temp),
		.IR_Out(IR_Out),
		.RA(RA_Out[31:0]),
		.RB(RB_Out[31:0]),
		.RZ(RZ_Out[31:0]),
		.RM(RM_Out[31:0]),
		.RY(RY_Out[31:0]),
		.RF_a(IR_Out[31:27]),
		.RF_b(IR_Out[26:22]),
		.RF_c(MuxC_Out),
		.MEM_Data_Out(MEM_Data_Out[31:0]),
		.PC_Select(PC_Select),
		.IR_Enable(IR_Enable),
		.PC_Enable(PC_Enable),
		.RA_Enable(RA_Enable),
		.RB_Enable(RB_Enable),
		.RZ_Enable(RZ_Enable),
		.RM_Enable(RM_Enable),
		.RY_Enable(RY_Enable),
		.MEM_Read(MEM_Read),
		.INC_Select(INC_Select),
		.CCR_Out(CCR_Out),
		.OP_Code(OP_Code),
		.ALU_Op(ALU_Op),
		.MuxB_Out(MuxB_Out[31:0]),
		.ImmediateBlock_Out(ImmediateBlock_Out),
		.Stage(Stage),
		.InstructionFormat(Instruction_Format),
		.C_Select(C_Select),
		.RF_WRITE(RF_WRITE),
		.RegFileRegisterToView(RegFileRegisterToView),
		
	//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.HexDisplay32Bits(HexDisplay)
	);


endmodule