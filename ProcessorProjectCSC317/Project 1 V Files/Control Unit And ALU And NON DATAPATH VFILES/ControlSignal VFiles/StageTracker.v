// Stage Tracker - Drives Enable Control Signals // What should be enabled, at each stage?
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 11/01/2014

module StageTracker(
	input wire [2:0] Stage,
	
		 //[Fetch]********************
			//Instruction Register
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
				output reg			ROM1_Read,
				
		 //[Write Back]********************
			// Final Output Register
				output reg			RY_Enable
	
);

initial 	begin
				IR_Enable=1; // Need clock in First instruction from ROM initially hmmm...

			end
			
			
			
// What should be enabled, at each stage?
always@(Stage)begin

	case(Stage)
	//[Fetch]********************
			//Stage(1) 111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
			1:	begin
					IR_Enable <= 0;// Enable IR in cycle 5, Get instruction in cycle 1
					PC_Enable <= 1;// Increment PC after getting instruction... Enable PC in cycle 1, increment PC in cycle 2 ... Every opperation takes 5 cycles... 
					RA_Enable <= 1;// Enable RA in cycle 1 Place Rsrc1 In RA in cycle 2 ...
					RB_Enable <= 1;// Enable RB in cycle 1 Place Rsrc2 In RB in cycle 2 ...
					RZ_Enable <= 0;
					RM_Enable <= 0;
					RY_Enable <= 0;
					ROM1_Read <= 0;// Enable ROM1_Read in cycle 5, Get instruction from ROM in cycle 1
				end
	//[Decode]********************
			//Stage(2) 222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222
			2:	begin
					IR_Enable <= 0;
					PC_Enable <= 0;
					RA_Enable <= 0;// Enable RA in cycle 1 Place Rsrc1 In RA in cycle 2 ...
					RB_Enable <= 0;// Enable RB in cycle 1 Place Rsrc2 In RB in cycle 2 ...
					RZ_Enable <= 1;// Enable RZ in cycle 2 Place ALU_Out In RZ in cycle 3 ...
					RM_Enable <= 1;// Enable RM in cycle 2 Place RB_Out In RM in cycle 3 ...
					RY_Enable <= 0;
					ROM1_Read <= 0;
				end
	//[Execute]********************
			//Stage(3) 333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
			3:	begin
					IR_Enable <= 0;
					PC_Enable <= 0;
					RA_Enable <= 0;
					RB_Enable <= 0;
					RZ_Enable <= 0;// Enable RZ in cycle 2 Place ALU_Out In RZ in cycle 3 ...
					RM_Enable <= 0;// Enable RM in cycle 2 Place RB_Out In RM in cycle 3 ...
					RY_Enable <= 1;// Enable RY in cycle 3 Place MuxY_Out In RY in cycle 4 ...
					ROM1_Read <= 0;
				end
	//[Memory]********************
			//Stage(4) 444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444
			4:	begin
					IR_Enable <= 0;
					PC_Enable <= 0;
					RA_Enable <= 0;
					RB_Enable <= 0;
					RZ_Enable <= 0;
					RM_Enable <= 0;
					RY_Enable <= 0;// Enable RY in cycle 3 Place MuxY_Out In RY in cycle 4 ...
					ROM1_Read <= 0;
				end
	//[Write Back]********************
			//Stage(5) 555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555
			5:	begin
					IR_Enable <= 1;// Enable IR in cycle 5, Get instruction in cycle 1
					PC_Enable <= 0;
					RA_Enable <= 0;
					RB_Enable <= 0;
					RZ_Enable <= 0;
					RM_Enable <= 0;
					RY_Enable <= 0;
					ROM1_Read <= 1;// Enable ROM1_Read in cycle 5, Get instruction from ROM in cycle 1
				end
				
				
	default:	begin  // DISABLE ALL
					IR_Enable <= 0;
					PC_Enable <= 0;
					RA_Enable <= 0;
					RB_Enable <= 0;
					RZ_Enable <= 0;
					RM_Enable <= 0;
					RY_Enable <= 0;
					ROM1_Read <= 0;
				end
				
	endcase // ENDCASE STAGE Stage
	
end//End Always


			 


endmodule 