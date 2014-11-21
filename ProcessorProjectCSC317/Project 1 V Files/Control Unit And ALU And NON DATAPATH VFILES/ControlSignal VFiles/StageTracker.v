// Stage Tracker - Drives Enable Control Signals // What should be enabled, at each stage?
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 11/01/2014

module StageTracker(
	input wire [2:0] Stage,
	input wire NOP_FLAG, MA_Select_Memory_Stage, PC_Enable_Execute_Stage,
	input wire [1:0] Memory_Z_RM_WM_RF_Memory_Stage, Memory_Z_RM_WM_RF_WriteBack_Stage,
	
		 //[Fetch]********************
			// Instruction Register
				output reg 			IR_Enable,
			// Instruction Address Generator
				output reg 			PC_Enable,

		 //[Decode]********************
			// ALU Input Registers
				output reg 			RA_Enable, RB_Enable,

		 //[Execute]********************
			// ALU Output Register
				output reg			RZ_Enable,
				
		 //[Memory]********************
			// Memory Address Register
				//output reg		RZ_Enable,
			// Memory Data Register
				output reg			RM_Enable,
			// Memory Address Mux
				output reg			MA_Select,
			// Memory
				output reg[1:0]	MEM_r_w_z_z,
				
		 //[Write Back]********************
			// Final Output Register
				output reg			RY_Enable,
			// Register File
				output reg 			RF_WRITE
				
);

			
			
			
// What should be enabled, at each stage?
always@(Stage)begin
	if(NOP_FLAG==0)begin //Normal Operation

	case(Stage)
	//[Fetch]********************
			//Stage(1) 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
			1:	begin
					IR_Enable 		<= 1 ; // Enable IR in cycle 1, Get instruction in cycle 2
					PC_Enable 		<= 1 ; // Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
					RA_Enable 		<= 0 ;
					RB_Enable 		<= 0 ;
					RZ_Enable 		<= 0 ;
					RM_Enable 		<= 0 ;
					RY_Enable 		<= 0 ;
					MA_Select		<= 1 ; // MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					MEM_r_w_z_z		<= 2'b00 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					RF_WRITE 		<= 0 ; // Enable RF_WRITE in cycle 5, Write RY->R[Rdst] In Cycle 1
					
				end
	//[Decode]********************
			//Stage(2) 222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
			2:	begin
					IR_Enable 		<= 0 ; // Enable IR in cycle 1, Get instruction in cycle 2
					PC_Enable 		<= 0 ; // Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
					RA_Enable 		<= 1 ; // Enable RA in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RB_Enable 		<= 1 ; // Enable RA in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RZ_Enable 		<= 0 ;
					RM_Enable 		<= 0 ;
					RY_Enable 		<= 0 ;
					MA_Select		<= 1 ; // MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					RF_WRITE 		<= 0 ;
				
				end
	//[Execute]********************
			//Stage(3) 333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
			3:	begin
					IR_Enable 		<= 0 ;
					PC_Enable 		<= PC_Enable_Execute_Stage ; //	(PC_Enable_Execute_Stage)		[1,0] 	= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					RA_Enable 		<= 0 ; // Enable RA in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RB_Enable 		<= 0 ; // Enable RB in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RZ_Enable 		<= 1 ; // Enable RZ in cycle 3 Place ALU_Out In RZ in cycle 4 ...
					RM_Enable 		<= 1 ; // Enable RM in cycle 3 Place RB_Out In RM in cycle 4 ...
					RY_Enable 		<= 0 ;
					MA_Select		<= 1 ; // MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance
					RF_WRITE 		<= 0 ;

				end
	//[Memory]********************
			//Stage(4) 444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
			4:	begin
					IR_Enable 		<= 0 ;
					PC_Enable 		<= 0 ;
					RA_Enable 		<= 0 ;
					RB_Enable 		<= 0 ;
					RZ_Enable 		<= 0 ; // Enable RZ in cycle 3 Place ALU_Out In RZ in cycle 4 ...
					RM_Enable 		<= 0 ; // Enable RM in cycle 3 Place RB_Out In RM in cycle 4 ...
					RY_Enable 		<= 1 ; // Enable RY in cycle 4 Place MuxY_Out In RY in cycle 5 ...
					MA_Select		<= MA_Select_Memory_Stage ; // MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
			
					case(Memory_Z_RM_WM_RF_Memory_Stage)
						
						0: begin // Do NOT Write Back
								MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance
								RF_WRITE  	   <= 0 ;
							end
							
						1: begin // Read From Memory (RAM) // NOTE, IF YOU TRY TO WRITE TO ROM, MEMORY JUST READS FROM ROM...
								MEM_r_w_z_z		<= 2'b00 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance
								RF_WRITE  	   <= 0 ;
							end
							
						2: begin // Write Back To Memory (RAM) // NOTE, IF YOU TRY TO WRITE TO ROM, MEMORY JUST READS FROM ROM...
								MEM_r_w_z_z		<= 2'b01 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable MEM_r_w_z_z in cycle 4, Write RZ->RAM[(RM)] or RM->RAM[(RZ)] In cycle 5
								RF_WRITE  	   <= 0 ;
							end

						3: begin // Write Back To The Register File
								MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance
								RF_WRITE       <= 0 ;
							end	
							
					endcase
				end
	//[Write Back]********************
			//Stage(5) 555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
			5:	begin
					IR_Enable 		<= 0 ;
					PC_Enable 		<= 0 ;
					RA_Enable 		<= 0 ;
					RB_Enable 		<= 0 ;
					RZ_Enable 		<= 0 ;
					RM_Enable 		<= 0 ;
					RY_Enable 		<= 0 ;
					MA_Select		<= MA_Select_Memory_Stage ; // MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					case(Memory_Z_RM_WM_RF_WriteBack_Stage)
						
						0: begin // Do NOT Write Back
								MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance
								RF_WRITE  	   <= 0 ;
							end
							
						1: begin // Read From Memory (RAM/ROM) // NOTE, IF YOU TRY TO WRITE TO ROM, MEMORY JUST READS FROM ROM...
								MEM_r_w_z_z		<= 2'b00 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance
								RF_WRITE  	   <= 0 ;
							end
							
						2: begin // Write Back To Memory (RAM) // NOTE, IF YOU TRY TO WRITE TO ROM, MEMORY JUST READS FROM ROM...
								MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable MEM_r_w_z_z in cycle 4, Write RZ->RAM[(RM)] or RM->RAM[(RZ)] In cycle 5
								RF_WRITE  	   <= 0 ;
							end

						3: begin // Write Back To The Register File
								MEM_r_w_z_z		<= 2'b00 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance  //DEFAULT READ FROM MEMORY STILL FOR LOADS
								RF_WRITE       <= 1 ;
							end	
							
					endcase
					
				end
				
	default:	begin  // DISABLE ALL
					IR_Enable 		<= 0 ;
					PC_Enable 		<= 0 ;
					RA_Enable 		<= 0 ;
					RB_Enable 		<= 0 ;
					RZ_Enable 		<= 0 ;
					RM_Enable 		<= 0 ;
					RY_Enable 		<= 0 ;
					MA_Select		<= 1 ; // MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance
					RF_WRITE 		<= 0 ;
				end
				
	endcase // ENDCASE STAGE Stage
	
	end // END IF (NOP_FLAG==0) //END Normal Operation

	if(NOP_FLAG==1)begin //No Operation, Special Case
			//Constant Signals
				RA_Enable 		<= 0 ;
				RB_Enable 		<= 0 ;
				RZ_Enable 		<= 0 ;
				RM_Enable 		<= 0 ;
				RY_Enable 		<= 0 ;
				MA_Select		<= 1 ; // MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
				
		case(Stage)
		//[Fetch]********************
				//Stage(1) 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
				1:	begin
						IR_Enable 		<= 1 ; // Enable IR in cycle 1, Get instruction in cycle 2
						PC_Enable 		<= 1 ; // Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
						MEM_r_w_z_z		<= 2'b00 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					end
		//[Decode]********************
				//Stage(2) 222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
				2:	begin
						IR_Enable 		<= 0 ; // Enable IR in cycle 1, Get instruction in cycle 2
						PC_Enable 		<= 0 ; // Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
						MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					end
		//[Execute]********************
				//Stage(3) 333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
				3:	begin
						IR_Enable 		<= 0 ;
						PC_Enable 		<= 0 ;
						MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					end
		//[Memory]********************
				//Stage(4) 444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
				4:	begin
						IR_Enable 		<= 0 ;
						PC_Enable 		<= 0 ;
						MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					end
		//[Write Back]********************
				//Stage(5) 555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
				5:	begin
						IR_Enable 		<= 0 ;
						PC_Enable 		<= 0 ;
						MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					end
								
					
		default:	begin  // DISABLE ALL
						IR_Enable 		<= 0;
						PC_Enable 		<= 0;
						MEM_r_w_z_z		<= 2'b11 ; // [00]->Read ,[01]->Write ,[1x]->Force High Impedance // Enable ROM1_Read in cycle 1, Get instruction from ROM in cycle 2
					end
							
			endcase // ENDCASE STAGE Stage
	end // END IF (NOP_FLAG==1) //END No Operation
end //End Always


			 


endmodule 