// Memory Interface
// Wrapper Function For Memory Modules
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 11/16/2014


module MemoryInterface(
	// Memory Wires
		// Inputs
			input  wire[31:0]	MEM_Address, MEM_Data_In, // WORD ADDRESSABLE
			input  wire[1:0] 		MEM_r_w_z_z, // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // NOTE, IF YOU TRY TO WRITE TO ROM, MEMORY JUST READS FROM ROM...
			input  wire				MEM_Clock,
			
			
		// Outputs
			output wire[31:0]  MEM_Data_Out,
			output wire 		 MEM_MFC, MEM_ERROR //Address Not Assigned
);

assign MEM_MFC = 1;//Temp Wired To 1 , we will not clock this fast enough for MFC to matter

assign MEM_ERROR = (MEM_Address>127);

// ROM Wires
	// Inputs
		wire[31:0] 		ROM1_Address; // WORD ADDRESSABLE
		wire 				ROM1_En, ROM1_Clock;
	// Outputs
		wire[31:0] 	 	ROM1_Data_Out;


	//Read Only Memory
		// ROM1
			assign 		ROM1_Address = MEM_Address[5:0];//64 Addresses
			assign 		ROM1_En = (MEM_ERROR==0)&&(MEM_r_w_z_z[1]==0)&&(MEM_Address[6]==0);// NOTE, IF YOU TRY TO WRITE TO ROM, MEMORY JUST READS FROM ROM...
			assign 		ROM1_Clock = MEM_Clock;
			assign 		MEM_Data_Out = ROM1_Data_Out; // NOTE : IF ROM IS NOT ENABLED, OUTPUT = 32'bz;
		ROM ROM1(
			.address(ROM1_Address), //Address From PC  // WORD ADDRESSABLE
			.clken(ROM1_En),  // Enable ROM
			.clock(ROM1_Clock),	// Clock
			.q(ROM1_Data_Out) // Instruction
			); 		

// RAM Wires
	//RAM1
		// Inputs
			wire[5:0] 	RAM1_Address; // WORD ADDRESSABLE
			wire 			RAM1_Read_H_Write_L, RAM1_En;
			wire[31:0]  RAM1_Data_In;
		// Outputs
			wire[31:0]  RAM1_Data_Out;
			wire			RAM1_MFC;
				

	//Random Access Memory
		// RAM1
			assign 		RAM1_En = (MEM_ERROR==0)&&(MEM_r_w_z_z[1]==0)&&(MEM_Address[6]==1);
			assign 		RAM1_Address = MEM_Address[5:0];//64 Addresses
			assign 		RAM1_Read_H_Write_L = (MEM_r_w_z_z[0]);
			//assign MEM_MFC = RAM1_MFC;
			assign 		RAM1_Data_In = MEM_Data_In;
			assign 		MEM_Data_Out =  RAM1_Data_Out;// NOTE : IF ROM IS NOT ENABLED, OUTPUT = 32'bz;
		RAM RAM1(
			.address({~RAM1_En,RAM1_Address}), // From RZ or PC // WORD ADDRESSABLE
			.read_w(~RAM1_Read_H_Write_L), // Memory Read (1) Write (0)
			.MFC(RAM1_MFC),  // MemoryFunctionComplete
			.dataIn(RAM1_Data_In), // Input Data
			.dataOut(RAM1_Data_Out) // Output Data
			);

	
endmodule
