// Stage Tracker - Drives Enable Control Signals // What should be enabled, at each stage?
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 11/01/2014

module StageTracker(
	input wire [2:0] Stage,
	input wire NOP_FLAG, WillWriteTo_Memory_H_RF_L,
	
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
			// Read Only Memory					
				output reg			MEM_Read,
			// Random Access Memory
				output reg			MEM_Write,
				
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
					IR_Enable 		<= 1 ;// Enable IR in cycle 1, Get instruction in cycle 2
					PC_Enable 		<= 1 ;// Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
					RA_Enable 		<= 0 ;
					RB_Enable 		<= 0 ;
					RZ_Enable 		<= 0 ;
					RM_Enable 		<= 0 ;
					RY_Enable 		<= 0 ;
					MEM_Read 		<= 1 ;// Enable MEM_Read in cycle 1, Get instruction from ROM in cycle 2
					MEM_Write 		<= 0 ;
					RF_WRITE 		<= 0 ;// Enable RF_WRITE in cycle 5, Write RY->R[Rdst] In Cycle 1
					
				end
	//[Decode]********************
			//Stage(2) 222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
			2:	begin
					IR_Enable 		<= 0 ;// Enable IR in cycle 1, Get instruction in cycle 2
					PC_Enable 		<= 0 ;// Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
					RA_Enable 		<= 1 ;// Enable RA in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RB_Enable 		<= 1 ;// Enable RA in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RZ_Enable 		<= 0 ;
					RM_Enable 		<= 0 ;
					RY_Enable 		<= 0 ;
					MEM_Read 		<= 0 ;// Enable MEM_Read in cycle 1, Get instruction from ROM in cycle 2
					MEM_Write 		<= 0 ;
					RF_WRITE 		<= 0 ;
				
				end
	//[Execute]********************
			//Stage(3) 333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
			3:	begin
					IR_Enable 		<= 0 ;
					PC_Enable 		<= 0 ;
					RA_Enable 		<= 0 ;// Enable RA in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RB_Enable 		<= 0 ;// Enable RA in cycle 2 Place Rsrc1 In RA in cycle 3 ...
					RZ_Enable 		<= 1 ;// Enable RZ in cycle 3 Place ALU_Out In RZ in cycle 4 ...
					RM_Enable 		<= 1 ;// Enable RM in cycle 3 Place RB_Out In RM in cycle 4 ...
					RY_Enable 		<= 0 ;
					MEM_Read 		<= 0 ;
					MEM_Write 		<= 0 ;
					RF_WRITE 		<= 0 ;

				end
	//[Memory]********************
			//Stage(4) 444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
			4:	begin
					IR_Enable 		<= 0 ;
					PC_Enable 		<= 0 ;
					RA_Enable 		<= 0 ;
					RB_Enable 		<= 0 ;
					RZ_Enable 		<= 0 ;// Enable RZ in cycle 3 Place ALU_Out In RZ in cycle 4 ...
					RM_Enable 		<= 0 ;// Enable RM in cycle 3 Place RB_Out In RM in cycle 4 ...
					RY_Enable 		<= 1 ;// Enable RY in cycle 4 Place MuxY_Out In RY in cycle 5 ...
					MEM_Read 		<= 0 ;
					case(WillWriteTo_Memory_H_RF_L)
						0: begin 
								MEM_Write 		<= 0 ;
								RF_WRITE       <= 0 ;
							end
						1: begin 
								MEM_Write 		<= 1 ;// Enable MEM_Write 4, Write RZ->RAM[(RM)] or RM->RAM[(RZ)] In Cycle 5
								RF_WRITE  	   <= 0 ;
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
					MEM_Read 		<= 0 ;
					case(WillWriteTo_Memory_H_RF_L)
						0: begin 
								MEM_Write 		<= 0 ;
								RF_WRITE       <= 1 ;// Enable RF_WRITE in cycle 5, Write RY->R[Rdst] In Cycle 1 
							end
						1: begin 
								MEM_Write 		<= 0 ;// Enable MEM_Write 4, Write RZ->RAM[(RM)] or RM->RAM[(RZ)] In Cycle 5
								RF_WRITE 		<= 0 ;
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
					MEM_Read 		<= 0 ;
					MEM_Write 		<= 0 ;
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
				MEM_Write 		<= 0 ;
				RF_WRITE 		<= 0 ;
		case(Stage)
		//[Fetch]********************
				//Stage(1) 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
				1:	begin
						IR_Enable 		<= 1 ;// Enable IR in cycle 1, Get instruction in cycle 2
						PC_Enable 		<= 1 ;// Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
						MEM_Read 		<= 1 ;// Enable MEM_Read in cycle 1, Get instruction from ROM in cycle 2
					end
		//[Decode]********************
				//Stage(2) 222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
				2:	begin
						IR_Enable 		<= 0 ;// Enable IR in cycle 1, Get instruction in cycle 2
						PC_Enable 		<= 0 ;// Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles...
						MEM_Read 		<= 0 ;// Enable MEM_Read in cycle 1, Get instruction from ROM in cycle 2				
					end
		//[Execute]********************
				//Stage(3) 333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
				3:	begin
						IR_Enable 		<= 0 ;
						PC_Enable 		<= 0 ;
						MEM_Read 		<= 0 ;
					end
		//[Memory]********************
				//Stage(4) 444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
				4:	begin
						IR_Enable 		<= 0 ;
						PC_Enable 		<= 0 ;
						MEM_Read 		<= 0 ;

					end
		//[Write Back]********************
				//Stage(5) 555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
				5:	begin
						IR_Enable 		<= 0 ;
						PC_Enable 		<= 0 ;
						MEM_Read 		<= 0 ;
					end
								
					
		default:	begin  // DISABLE ALL
						IR_Enable <= 0;
						PC_Enable <= 0;
						MEM_Read <= 0;
					end
							
			endcase // ENDCASE STAGE Stage
	end // END IF (NOP_FLAG==1) //END No Operation
end//End Always


			 


endmodule 