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
					output wire	[1:0]	Extend,
					output wire 		NOP_FLAG, IFNR_FLAG,
				// Instruction Address Generator
					output wire			PC_Enable,
					output wire 		INC_Select,
					output wire [1:0] PC_Select,

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
					//output reg			CCR_Enable,
					
			 //[Memory]********************
				// Memory Address Register
					//output wire		RZ_Enable,
				// Memory Data Register
					output wire			RM_Enable,
				// MuxMA // Memory Address
					output wire			MA_Select,
				// Memory
					output wire[1:0]  MEM_r_w_z_z,
			 //[Write Back]********************
				//MuxY
					output wire [1:0]	Y_Select,
				// Final Output Register
					output wire			RY_Enable

	);	// End Of Argument Delcaration------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	
	// DecodeInstruction
		DecodeInstruction DecodeInst(.Instruction(Instruction),
		.Instruction_Format(Instruction_Format),.Instruction_Rsrc1(Instruction_Rsrc1),.Instruction_Rsrc2(Instruction_Rsrc2),
		.Instruction_Rdst(Instruction_Rdst),.Instruction_Immediate(Instruction_Immediate),.Instruction_OP_Code(Instruction_OP_Code),
		.IFNR_FLAG(IFNR_FLAG),.NOP_FLAG(NOP_FLAG)
		);
	
	// Step Counter - What Stage Are We In?
		ClockCounter StageGenerator(.Clock(Clock),.ClockCount(Stage));
		
	// Enable Controller
	wire [1:0] Memory_Z_RM_WM_RF_Memory_Stage,Memory_Z_RM_WM_RF_WriteBack_Stage;
	wire MA_Select_Memory_Stage;
		StageTracker EnableSignals(
			//Inputs
			.Stage(Stage[2:0]),.NOP_FLAG(NOP_FLAG),.Memory_Z_RM_WM_RF_Memory_Stage(Memory_Z_RM_WM_RF_Memory_Stage),
			.Memory_Z_RM_WM_RF_WriteBack_Stage(Memory_Z_RM_WM_RF_WriteBack_Stage),.MA_Select_Memory_Stage(MA_Select_Memory_Stage),
			//Outputs
			.IR_Enable(IR_Enable),.PC_Enable(PC_Enable),.RA_Enable(RA_Enable),.RB_Enable(RB_Enable),
			.RZ_Enable(RZ_Enable),.RM_Enable(RM_Enable),.RY_Enable(RY_Enable),.RF_WRITE(RF_WRITE),
			.MA_Select(MA_Select),.MEM_r_w_z_z(MEM_r_w_z_z)
			
		);
		
	// Operation Dependent Control Signals
		SelectController SelectSignals(
			//Inputs
			.OP_Code(Instruction_OP_Code),.Instruction_Format(Instruction_Format),
			//Outputs
			.ALU_Op(ALU_Op[31:0]),.Extend(Extend[1:0]),.C_Select(C_Select[1:0]),.Y_Select(Y_Select[1:0]),			
			.PC_Select(PC_Select),.INC_Select(INC_Select),.B_Select(B_Select),.Memory_Z_RM_WM_RF_Memory_Stage(Memory_Z_RM_WM_RF_Memory_Stage),
			.Memory_Z_RM_WM_RF_WriteBack_Stage(Memory_Z_RM_WM_RF_WriteBack_Stage),.MA_Select_Memory_Stage(MA_Select_Memory_Stage)
		);


		

endmodule