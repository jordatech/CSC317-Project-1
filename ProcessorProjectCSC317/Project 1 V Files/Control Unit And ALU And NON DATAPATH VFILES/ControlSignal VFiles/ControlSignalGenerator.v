// Control Signal Generator
//Created By Nathan
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 11/01/2014
module ControlSignalGenerator(
	//Input
	input [31:0] Instruction,
	input Clock,
			
	output [2:0] Stage,		
	// Output Control Signals

			 //[Fetch]********************
				//Instruction Register
					output wire			IR_Enable, 
				// Immediate Block and "Decode Instruction"
					output wire			Extend,
					output wire 		NOP_FLAG, IFNR_FLAG,
				// Instruction Address Generator
					output wire			PC_Enable,
					output wire 			PC_Select, INC_Select,

				// Register File
					output wire			RF_WRITE, 
				// MUXC
					output wire [4:0] Instruction_Rsrc1, Instruction_Rsrc2, Instruction_Rdst, 
					output wire	[1:0] C_Select,
	
			 //[Decode]********************
				// ALU Input Registers
					output wire			RA_Enable, RB_Enable,
				// MUXB
					output wire			B_Select, 
		
			 //[Execute]********************
				// ALU
					output wire [1:0]	Instruction_Format, 
					output wire [31:0]Instruction_OP_Code,Instruction_Immediate, ALU_Op,   
				// ALU Output Register
					output wire			RZ_Enable,
				// Condition Control Register
					output reg			CCR_Enable,
					
			 //[Memory]********************
				// Memory Address Register
					//output wire		RZ_Enable,
				// Memory Data Register
					output wire			RM_Enable,
				// MuxMA // Memory Address
					output wire			MA_Select,
				// Random Access Memory
					output reg 			MEM_Read_H_Write_L,
				// Read Only Memory					
					output wire			ROM1_Read,

			 //[Write Back]********************
				//MuxY
					output wire [1:0]	Y_Select,
				// Final Output Register
					output wire			RY_Enable

	);	// End Of Argument Delcaration------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	
	// DecodeInstruction
		DecodeInstruction DecodeInst(.Instruction(Instruction),
		.Instruction_Format(Instruction_Format),.Instruction_Rsrc1(Instruction_Rsrc1),.Instruction_Rsrc2(Instruction_Rsrc2),
		.Instruction_Rdst(Instruction_Rdst),.Instruction_Immediate(Instruction_Immediate),.Instruction_OP_Code(OP_Code),.IFNR_FLAG(IFNR_FLAG));
	
	// Step Counter - What Stage Are We In?
		ClockCounter StageGenerator(.Clock(Clock),.ClockCount(Stage));
		
	// Enable Controller
		StageTracker EnableSignals(
			//Inputs
			.Stage(Stage[2:0]),
			//Outputs
			.IR_Enable(IR_Enable),.PC_Enable(PC_Enable),.RA_Enable(RA_Enable),.RB_Enable(RB_Enable),
			.RZ_Enable(RZ_Enable),.RM_Enable(RM_Enable),.RY_Enable(RY_Enable),.ROM1_Read(ROM1_Read)
		);
		
	// Opperation Dependent Controll Signals
		SelectController SelectSignals(
			//Inputs
			.OP_Code(Instruction_OP_Code),.Instruction_Format(Instruction_Format)
			//Outputs

		);

/*
// Special Case
// Random Access Memory
	output reg 			MEM_Read_H_Write_L,


*/
		
		
// TEMPORARY CONSTANT SIGNALS -----------------------------------------------------------------------------------------------------------------------------
	// Output Control Signals

			 //[Fetch]********************
				// Immediate Block and "Decode Instruction"
					assign 					Extend= 2'b0; //(Extend) [3,2,1,0] = [(format (b) zero extend),(format (b) sign extend),(format (a) zero extend),(format (a) sign extend)]
					assign					NOP_FLAG = 1'b0; //(NOP_FLAG) No Operation
				// Instruction Address Generator
					assign 					PC_Select = 1; //(PC_select) Increment PC "0"->jump to "RA" .... "1"->inc by MuxINC  // MuxPC = PC_select ? NextAdd: RA
					assign 					INC_Select=0; //(INC_select) Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
				// Register File
					assign					RF_WRITE = 1 ;//(RF_WRITE) Write To Register File 
				// MUXC
					assign					C_Select[1:0] = 1 ;// "Rdst" //C_Select[2,1,0] = {LINK  ,  Instruction Format (a)(RDST[21:17])  ,   Instruction Format (b) (RSRC1[31:27])(RDST[26:22])}
	
			 //[Decode]********************
				// MUXB
					assign					B_Select = 0;// "ALU_RB_IN" //(B_Select) [1,0] = {ImmediateBlock_Out,RB_Out} // What goes into the ALU...
		
			 //[Execute]********************
				// ALU
					assign					ALU_Op = 32'b0 ;// (ALU_Op) ALU Unique Opperation Identifier
					
			 //[Memory]********************
				// MuxMA // Memory Address
					assign					MA_Select = 0;// (MA_Select) [1,0] = {PC_Out,RZ_Out}

			 //[Write Back]********************
				//MuxY
					assign					Y_Select = 0;// (Y_Select) [2,1,0] = {Return_Address,RAM1_Data_Out,RZ_Out}



endmodule