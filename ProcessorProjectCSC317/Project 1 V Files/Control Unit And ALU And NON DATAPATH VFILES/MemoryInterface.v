// Memory Interface
// Wrapper Function For Memory Modules
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 11/01/2014


module MemoryInterface(
	// Memory Wires
		// Inputs
			input  wire[31:0]	MEM_Address, MEM_Data_In, // WORD ADDRESSABLE
			input  wire 		MEM_Read, MEM_Write, MEM_Clock,
		// Outputs
			output reg[31:0]  MEM_Data_Out,
			output reg			MEM_MFC, MEM_ANA_FLAG //Address Not Assigned
);

// ROM Wires
	//RAM
	// Inputs
		wire[31:0] 		ROM1_Address; // WORD ADDRESSABLE
		wire 				ROM1_Read, ROM1_Clock;
	// Outputs
		wire[31:0] 	 	ROM1_Data_Out;

// RAM Wires
	//RAM1
		// Inputs
			wire[5:0] 	RAM1_Address; // WORD ADDRESSABLE
			wire 			RAM1_Read_H_Write_L, RAM1_Out_Enable;
			wire[31:0]  RAM1_Data_In;
		// Outputs
			wire[31:0]  RAM1_Data_Out;
			wire			RAM1_MFC;

	//Read Only Memory
		// ROM1
			assign 		ROM1_Address = MEM_Address[5:0];
			assign 		ROM1_Read = MEM_Read;
			assign 		ROM1_Clock = MEM_Clock;
		ROM ROM1(
			.address(ROM1_Address), //Address From PC  // WORD ADDRESSABLE
			.clken(ROM1_Read),  // Enable ROM
			.clock(ROM1_Clock),	// Clock
			.q(ROM1_Data_Out) // Instruction
			); 		

				

	//Random Access Memory
		// RAM1
			assign 		RAM1_Out_Enable = MEM_Read;
			assign 		RAM1_Address = MEM_Address;
			assign 		RAM1_Read_H_Write_L = (!MEM_Write);
			//assign MEM_MFC = RAM1_MFC;
			assign 		RAM1_Data_In = MEM_Data_In;
		RAM RAM1(
			.address({~RAM1_Out_Enable,RAM1_Address}), // From RZ or PC // WORD ADDRESSABLE
			.read_w(RAM1_Read_H_Write_L), // Memory Read (1) Write (0)
			.MFC(RAM1_MFC),  // MemoryFunctionComplete
			.dataIn(RAM1_Data_In), // Input Data
			.dataOut(RAM1_Data_Out) // Output Data
			);
		
	always@(MEM_Address)	begin
		casex(MEM_Address)
				32'b0000_0000_0000_0000_0000_0000_00xx_xxxx: 	begin // ROM1-------------------------------------------------------------------------------------
																			// Memory Wires
																				// Outputs
																					MEM_Data_Out <= ROM1_Data_Out;
																					MEM_MFC <= 1;//Temp Wired To 1 , we will not clock this fast enough for MFC to matter
																					MEM_ANA_FLAG <= 0;
																				end
																  
				32'b0000_0000_0000_0000_0000_0000_01xx_xxxx: 	begin // RAM1-------------------------------------------------------------------------------------
																			// Memory Wires
																				// Outputs
																					MEM_Data_Out <= RAM1_Data_Out;
																					MEM_MFC <= 1;//Temp Wired To 1 , we will not clock this fast enough for MFC to matter
																					MEM_ANA_FLAG <= 0;
																				end
			
																default:		 begin // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
																			// Memory Wires
																				// Outputs
																					MEM_Data_Out <= 0;
																					MEM_MFC <= 1;//Temp Wired To 1 , we will not clock this fast enough for MFC to matter
																					MEM_ANA_FLAG <= 1;//Address Not Assigned
																				end
		endcase
	end
	
endmodule
