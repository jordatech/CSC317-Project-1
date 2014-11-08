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
					output wire 		PC_Select, INC_Select,

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
				// Memory Wires
					// Inputs
						input wire		MEM_MFC, MEM_ANA_FLAG, //Address Not Assigned
					// Outputs
						output wire 	MEM_Read, MEM_Write,

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
		StageTracker EnableSignals(
			//Inputs
			.Stage(Stage[2:0]),.NOP_FLAG(NOP_FLAG),.WillWriteTo_Memory_H_RF_L(WillWriteTo_Memory_H_RF_L),
			//Outputs
			.IR_Enable(IR_Enable),.PC_Enable(PC_Enable),.RA_Enable(RA_Enable),.RB_Enable(RB_Enable),
			.RZ_Enable(RZ_Enable),.RM_Enable(RM_Enable),.RY_Enable(RY_Enable),
			.MEM_Read(MEM_Read),.RF_WRITE(RF_WRITE),.MEM_Write(MEM_Write)
		);
		
	// Operation Dependent Control Signals
		SelectController SelectSignals(
			//Inputs
			.OP_Code(Instruction_OP_Code),.Instruction_Format(Instruction_Format),
			//Outputs
			.ALU_Op(ALU_Op[31:0]),.Extend(Extend[1:0]),.C_Select(C_Select[1:0]),.Y_Select(Y_Select[1:0]),			
			.PC_Select(PC_Select),.INC_Select(INC_Select),.B_Select(B_Select),.MA_Select(MA_Select),.WillWriteTo_Memory_H_RF_L(WillWriteTo_Memory_H_RF_L),
		);


		
		
// Random Access Memory
	//assign RAM1_Read = 1;// Always Read From Memory, Just Do Not Always Select The Output at MUXY //(RAM1_Read) (0) Ouput is high impedance (1)Output is RAM1_Address
//						.MEM_MFC(MEM_MFC),
//						.MEM_ANA_FLAG(MEM_ANA_FLAG),
//						.MEM_Read(MEM_Read),
//						.MEM_Write(MEM_Write),



endmodule