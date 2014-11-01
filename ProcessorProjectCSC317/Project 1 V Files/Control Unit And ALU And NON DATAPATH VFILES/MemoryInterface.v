// Memory Interface
// Wrapper Function For Memory Modules
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 11/01/2014


module MemoryInterface(
	// ROM Wires
		// Inputs
			input wire[31:0] 	ROM1_Address, // WORD ADDRESSABLE
			input wire 			ROM1_Read, ROM1_Clock,
		// Outputs
			output wire[31:0] ROM1_Data_Out,

	// RAM Wires
		// Inputs
			input wire[31:0] 	RAM1_Address, // WORD ADDRESSABLE
			input wire 			RAM1_Read_H_Write_L, 
			input wire[31:0]  RAM1_Data_In,
		// Outputs
			output wire[31:0] RAM1_Data_Out,
			output wire			RAM1_MFC

);


	
//Read Only Memory
ROM ROM1(
	.address(ROM1_Address), //Address From PC  // WORD ADDRESSABLE
	.clken(ROM1_Read),  // Enable ROM
	.clock(ROM1_Clock),	// Clock
	.q(ROM1_Data_Out) // Instruction
	); 		
	
//Random Access Memory
RAM RAM1(
	.address(RAM1_Address), // From RZ or PC // WORD ADDRESSABLE
	.read_w(RAM1_Read_H_Write_L), // Memory Read (1) Write (0)
	.MFC(RAM1_MFC),  // MemoryFunctionComplete
	.dataIn(RAM1_Data_In), // Input Data
	.dataOut(RAM1_Data_Out), // Output Data
	);
	
endmodule
