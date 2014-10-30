// Control Signal Generator
//Created By Nathan
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014
module ControlSignalGenerator(
	//Input
	input [31:0] Instruction,
	input Clock,
			
	output [2:0] ClockCount		
	// Output Control Signals

			 //[Fetch]********************
				//Instruction Register
					output reg 			IR_Enable, 
				// Immediate Block = "Decode Instruction"
					output reg 			Extend, NOP_FLAG, IFNR_FLAG,
				// Instruction Address Generator
					output reg 			PC_Enable, PC_Select, INC_Select,
					output reg [31:0] BranchOffset,
				// Register File
					output reg			RF_WRITE, 
				// MUXC
					output reg [4:0] 	Rsrc1, Rsrc2, Rdst,
					output reg		  	C_Select,
	
			 //[Decode]********************
				// ALU Input Registers
					output reg 			RA_Enable, RB_Enable,
				// MUXB
					output reg			B_Select, 
		
			 //[Execute]********************
				// ALU
					output reg [1:0]	InstructionFormat, 
					output reg [31:0]	OP_Code, IMMEDIATE_Decoded,   
				// ALU Output Register
					output reg			RZ_Enable,
				// Condition Control Register
					output reg			CCR_Enable;
					
			 //[Memory]********************
				// Memory Address Register
					//output reg		RZ_Enable,
				// Memory Data Register
					output reg			RM_Enable,
				// MuxMA // Memory Address
					output reg 			MA_Select,
				// Random Access Memory
					output reg [31:0]	MEM_Read_H_Write_L,MEM_Address, MEM_In, MEM_Out, MFC,
				// Read Only Memory					
					output reg			ROM_Read,

			 //[Write Back]********************
				//MuxY
					output reg [1:0]	Y_Select,
				// Final Output Register
					output reg			RY_Enable

	);	// End Of Argument Delcaration------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	
	// DecodeInstruction
		DecodeInstruction DecodeInst(.Instruction(Instruction),
		.InstructionFormat(InstructionFormat),.Rsrc1(Rsrc1),.Rsrc2(Rsrc2),.Rdst(Rdst),.OP_Code(OP_Code),
		.IFNR_FLAG(IFNR_FLAG),.NOP_FLAG(NOP_FLAG),.IMMEDIATE_Decoded(IMMEDIATE_Decoded),.Extend(Extend));
	
	// Step Counter - What Stage Are We In?
		ClockCounter CountClk(.Clock(Clock),.ClockCount(ClockCount));
	
/*
// Declare Components------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//[Fetch]
	// InstructionAddressGenerator
		reg PC_Select,INC_Select;
		reg [31:0]BranchOffset;
		wire [31:0]PC, PC_Temp;
		wire PC_Enable;
	// Clock Counter
	
		wire [2:0] ClockCount;
	
		
		
//[Decode]
			wire LINK; // Link Register
			wire IR_Enable, RA_Enable, RB_Enable, RZ_Enable, RM_Enable, RY_Enable;
			wire [31:0] IR_In, RA_In, RB_In, RZ_In, RM_In, RY_In;
			wire [31:0] IR_Out, RA_Out, RB_Out, RZ_Out, RM_Out, RY_Out;
			reg_32b IR (.R(IR_In), .Enable(IR_Enable), .Clock(Clock), .Q(IR_Out));// Instruction Register
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
		wire MUXB_Out;
		wire B_Select;
//[Execute]
	// Condition Control Register
  //CCR 32-Bit Format [...NOP, IFNR, INR , N, Z, V, C]
  //CCR [... No Operation, Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]	
	wire CCR_Enable, CCR_Out;
	reg_32b CCR (.R({NOP_FLAG, IFNR_FLAG, INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG}), .Enable(CCR_Enable), .Clock(Clock), .Q(CCR_Out));// IN(ALU || Decode) -> OUT(USER)
																								 
	// Internal Registers // FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
	wire NOP_FLAG,  // No Operation // Do nothing For 5 Cycles
		  IFNR_FLAG, // Instruction Format Not Recognized ... Driven From DecodeInstruction
		  INR_FLAG,  // Instruction Not Recognized ... Driven From ALU
		  ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG;// Five Flags
//[Memory]
	wire Return_Address;
	wire Memory_Data;

//[Write Back]
	wire MUXY_Out;
	wire Y_Select;
	
		  
		  
//Control Signals------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//Registers
	always@(Clock)begin
	//[Fetch]
		// InstructionAddressGenerator
			PC_Select=1; //(PC_select) Increment PC "0"->jump to "RA" .... "1"->inc by MuxINC  // MuxPC = PC_select ? NextAdd: RA
			INC_Select=0; //(INC_select) Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
			BranchOffset=32'hF0F0;
	end

// Wires
	//[Fetch]
		assign IR_In = ROM_Out;// We get our instructions from the ROM File
		assign Instruction = IR_Out; // Rename wire for convenance
		assign IR_Enable = (ClockCount==4); // Enable at cycle 4, Get instruction at cycle 0
		assign PC_Enable = (ClockCount==0); // Enable at cycle 0, Get increment PC at cycle 1 ... Every opperation takes 5 cycles... Increment PC after getting instruction...
	//[Decode]
			assign LINK=0; // Link Register for Inturupt and Subroutine return addresses
			
			assign RF_WRITE=1;//When would we NOT want to write back to the REGISTER FILE
			assign RA_Enable=1;
			assign RB_Enable=1;
			assign RZ_Enable=1;
			assign RM_Enable=1;
			assign RY_Enable=1;
			assign B_Select=0;
		// Read Only Memory
			wire [31:0] Instruction;
			assign MEM_Read=1;//ClockCount[2];// Every opperation takes 5 cycles... ONLY WHEN THE PC CHANGES DO I READ FROM MEMORY
			assign ROM_Address_Select = PC; // The Program Counter Tells Us Which Address To Look In ROM...
			
	//[Write Back]
		assign Y_Select = 0;
		assign Return_Address=0;

	*/
	
	end
endmodule