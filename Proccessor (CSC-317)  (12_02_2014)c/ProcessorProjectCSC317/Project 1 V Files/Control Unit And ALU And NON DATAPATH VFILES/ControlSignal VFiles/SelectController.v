// Stage Tracker
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 9:05 PM 11/01/2014

module SelectController(
	input [31:0]		OP_Code, 			 
	input [1:0]			Instruction_Format,
	output reg [31:0]	ALU_Op, 				//Phase 2 has 19 OP_Codes  but we can expand with 32-bits
	output reg [1:0]	Extend,
							C_Select,
							Y_Select,
							PC_Select,
							Memory_Z_RM_WM_RF_Memory_Stage,
							Memory_Z_RM_WM_RF_WriteBack_Stage,			
	output reg			INC_Select,
							B_Select,
							MA_Select_Memory_Stage,
							PC_Enable_Execute_Stage
					
);
// What should we select for each Operational Code?
			
// (RTL) Register Transfer Language Description References:
//	(1.)http://www.ece.uprm.edu/~nayda/Courses/Inel4215F03/Lectures/LectureSept22.pdf
// (2.)http://repository.cmu.edu/cgi/viewcontent.cgi?article=2666&context=compsci
// Most of RTL Equivelents use the verilog operator for the given opperation...

//// TEMPORARY CONSTANT SIGNALS -----------------------------------------------------------------------------------------------------------------------------
//	// Output Control Signals
//
//			 //[Fetch]********************
//				// Immediate Block and "Decode Instruction"
//					Extend= ; //Not used in format (a)	//(Extend) [3,2,1,0] = [(format (b) zero extend),(format (b) sign extend),(format (a) zero extend),(format (a) sign extend)]
//					NOP_FLAG = ; //(NOP_FLAG) No Operation
//				// Instruction Address Generator
//					PC_Select = ; // (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
//					INC_Select = ; //(INC_select) Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
//				
//				// MUXC
//					C_Select[1:0] = ;// "Rdst" //C_Select[2,1,0] = {LINK  ,  Instruction Format (a)(RDST[21:17])  ,   Instruction Format (b) (RSRC1[31:27])(RDST[26:22])}
//	
//			 //[Decode]********************
//				// MUXB
//					B_Select = ;// "ALU_RB_IN" //(B_Select) [1,0] = {ImmediateBlock_Out,RB_Out} // What goes into the ALU...
//		
//			 //[Execute]********************
//				// ALU
//					ALU_Op =  ;// (ALU_Op) ALU Unique Opperation Identifier
//					
//			 //[Memory]********************
//				// MuxMA // Memory Address
//				MA_Select_Memory_Stage = ;// (MA_Select_Memory_Stage) [1,0] = {PC_Out,RZ_Out}
//
//			 //[Write Back]********************
//				//MuxY
//				Y_Select = ;// (Y_Select) [2,1,0] = {Return_Address,MEM_Data_Out,RZ_Out}

always @(OP_Code)
	begin
	
		//Instruction Format (a)		 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA						
		//(RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0]) Instruction Format (a)	Instruction Format (a)	Instruction Format (a)	
		//if(Instruction_Format=='d0) begin //  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
			casex(OP_Code[16:0])
				17'bxxxx_xxxxxxx_111111: 	begin	// Debugging Purposes
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  0;								// NOP
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 0;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 0;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*_____________________(NOP)________________________	
					(NOP)DESCRIPTION:
						(1.) No Operation  // Stall but take 5 cycles to do it...
					____________________________________________________	
					(NOP)RTL EQUIVELENT:
						(1.) "Do Nothing"
						//??????// Do we want to do an addative identity ie:(RZ<- 0+[RA])
						//??????// Do we need a "NOP" flag in the condition control register
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'b0000_0000001_000000:	begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  1;								// ADD 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*_____________________(ADD)________________________
					(ADD)DESCRIPTION:
						(1.) Addition
					____________________________________________________	
					(ADD)RTL EQUIVELENT:
						(1.) RZ<- [RA]+[RB]
						(2.) if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0))
								OVERFLOW_FLAG<- 1
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0)) //Overflow Occurs When (Adding) Two (Positives) And Get A (Negative) or (Adding) Two (Negatives) And Get A (Positive)
								// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA+RB)[32];
					____________________________________________________*/

					end			
				
				17'b0000_0000100_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  2; 								// SUB
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					

					/*_____________________(SUB)________________________
					(SUB)DESCRIPTION:
						(1.) Subtraction
					____________________________________________________	
					(SUB)RTL EQUIVELENT:
						(1.) RZ<- [RA]-[RB]
						(2.) if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0))
								OVERFLOW_FLAG<- 1
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0)) //Overflow Occurs When (Subtracting) A (Positive By A Negative) And Getting A (Negative) or (Subtracting) A (Negative By A Positive) And Getting A (Positive)
								//Then// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA-RB)[32];
					____________________________________________________*/
					end
					
				17'b0000_0001000_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  3;								// AND 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
				/*AnD*/;// Bitwise AnD "camel_backed" to keep seperate from ADDITION
					/*_____________________(AnD)________________________
					(AnD)DESCRIPTION:
						(1.) Bitwise AnD
					____________________________________________________	
					(AnD)RTL EQUIVELENT:
						(1.) RZ<- [RA]&[RB]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
					____________________________________________________*/
					end
				
				17'b0000_0001001_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  4;								// OR
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
										
					/*OR*/;
					/*_____________________(OR)________________________
					(OR)DESCRIPTION:
						(1.) Bitwise OR
					____________________________________________________	
					(OR)RTL EQUIVELENT:
						(1.) RZ<- [RA]|[RB]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'b0000_0001010_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  5;								// NEG 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*NEG*/
					/*_____________________(NEG)________________________
					(NEG)DESCRIPTION:
						(1.) (Two's) Complement  //To get the two's complement of a binary number, the bits are inverted, or "flipped", by using the bitwise NOT operation; the value of 1 is then added to the resulting value, ignoring the overflow which occurs when taking the two's complement of 0.
					____________________________________________________	
					(NEG)RTL EQUIVELENT:
						(1.) RZ<- -[RA]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG <- (RZ[31] != RA[31]) ? 1 : 0 ; 
					____________________________________________________*/

					end
					
				17'b0000_0001011_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  6;								// XOR 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*XOR*/
					/*_____________________(XOR)________________________
					(XOR)DESCRIPTION:
						(1.) Bitwise Exclusive OR // Exclusive OR is a logical operation that outputs true whenever both inputs differ (one is true, the other is false).
					____________________________________________________	
					(XOR)RTL EQUIVELENT:
						(1.) RZ<- [RA]^[RB]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'b0000_0001100_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  7;								// COMP 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*COMP*/;
					/*_____________________(COMP)________________________
					(COMP)DESCRIPTION:
						(1.) Bitwise (One's) Complement
					____________________________________________________	
					(COMP)RTL EQUIVELENT:
						(1.) RZ<- ~[RA]
						(2.) //??????//Do We Need To Assign The CARRY_FLAG
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
				
				17'b0000_0010000_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  8;								// LSR 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*LSR*/;
					/*_____________________(LSR)________________________
					(LSR)DESCRIPTION:
						(1.) Logical Shift Right  // Shift One Bit Position Only
					____________________________________________________	
					(LSR)RTL EQUIVELENT:
						(1.) RZ<- [RA] >> 1
						(2.) CARRY_FLAG<- [RA[0]] // Carry Flag From LSB On RHS [0]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) CARRY_FLAG
					____________________________________________________*/
					end
					
				17'b0000_0010001_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  9;								// ASR 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*ASR*/;
					/*_____________________(ASR)________________________
					(ASR)DESCRIPTION:
						(1.) Arithmetic Shift Right  // Arithmetic Shifts Sign Extend // Shift One Bit Position Only
					____________________________________________________	
					(ASR)RTL EQUIVELENT:
						(1.) RZ<- [RA] >>> 1
						(2.) CARRY_FLAG<- [RA[0]] // Carry Flag From LSB On RHS [0]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) CARRY_FLAG
					____________________________________________________*/
					end
				
				17'b0000_0010011_000000: begin
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  10;								// LSL_ASL 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*LSL_ASL*/  // LSL Is The Same As ASL , Back Fills With Zeros
					/*_____________________(LSL_ASL)________________________
					(LSL_ASL)DESCRIPTION:
						(1.) Logical/Arithmatical Shift Left  // Shift One Bit Position Only
					____________________________________________________	
					(LSL_ASL)RTL EQUIVELENT:
						(1.) RZ<- [RA] << 1  //  RZ<- [RA] <<< 1
						(2.) CARRY_FLAG<- [RA[31]] // Carry Flag From MSB On LHS [31]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) CARRY_FLAG
					____________________________________________________*/
					end
				
				17'b0000_0011001_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  11;								// ROR
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*ROR*/
					/*_____________________(ROR)________________________
					(ROR)DESCRIPTION:
						(1.) Rotate Right  // By One Bit Position
					____________________________________________________	
					(ROR)RTL EQUIVELENT:
						(1.) RZ<- {CARRY_FLAG,RA[31:1]} // Bring The CARRY_FLAG Back Arround, No Loss Of Data...
						(2.) CARRY_FLAG<- [RA[0]] // Carry Flag From LSB On RHS [0]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) CARRY_FLAG
						//??????// But then the output depends on the last Instruction which assigns the CARRY_FLAG...
						//??????// I question this implementation because it will NOT provide a one-one, input-output mapping (ie: a given input may have two separate outputs which are dependent upon PAST INPUTS).
					____________________________________________________*/
					end
		
				17'b0000_0011010_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  12;								// ROL 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*ROL*/
					/*_____________________(ROL)________________________
					(ROL)DESCRIPTION:
						(1.) Rotate Left  // By One Bit Position
					____________________________________________________	
					(ROL)RTL EQUIVELENT:
						(1.) RZ<- {RA[30:0],CARRY_FLAG} // Bring The CARRY_FLAG Back Arround, No Loss Of Data...
						(2.) CARRY_FLAG<- [RA[31]] // Carry Flag From MSB On LHS [31]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) CARRY_FLAG
						//??????// But then the output depends on the last Instruction which assigns the CARRY_FLAG...
						//??????// I question this implementation because it will NOT provide a one-one, input-output mapping (ie: a given input may have two separate outputs which are dependent upon PAST INPUTS).
					____________________________________________________*/
					end	
						
				17'b0000_0100000_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  13;								// MOVE 
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*MOVE*/
					/*_____________________(MOVE)________________________
					(MOVE)DESCRIPTION:
						(1.) Move // Copy RSRC1 To RDST In The Register File
					____________________________________________________	
					(MOVE)RTL EQUIVELENT:
						(1.) RZ<-[RA]
						//!!!!!!!// Have To Store To Memory
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
				
				17'b0000_0100001_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  14;								// LBI 
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 1;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*LBI*/
					/*_____________________(LBI)________________________
					(LBI)DESCRIPTION:
						(1.) Load Base With Index
					____________________________________________________	
					(LBI)RTL EQUIVELENT:
						(1.) RZ<-(Ri,Rj) //EA = [RA]+[RB]
						//!!!!!!!// Have To Fetch From Memory
						//???????// HOW IS AN (LBI) DIFFERENT FROM AN (ADD) FROM THE ALU's PERSPECTIVE
						//???????// DO WE NEED AN "IS ADDRESS" CONTROL SIGNAL IN THE CCR
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'b0000_0100010_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  15;								// LDRi 
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 1;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*LDRI*/
					/*_____________________(LDRI)________________________
					(LDRI)DESCRIPTION:
						(1.) Load Register Indirect
					____________________________________________________	
					(LDRI)RTL EQUIVELENT:
						(1.) RZ<-(RA) // EA=[RB]
						//!!!!!!!// Have To Fetch From Memory
						//???????// AGAIN DO WE NEED AN "IS ADDRESS" CONTROL SIGNAL IN THE CCR
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
				
				17'b0000_1000000_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 0;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 1;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  16;								// JMP
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 1;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 0;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 0;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface

					/*JMP*/
					/*_____________________(JMP)________________________
					(JMP)DESCRIPTION:
						(1.) Jump //Place the contents of Rsrc1 into the PC
					____________________________________________________	
					(JMP)RTL EQUIVELENT:
						(1.) RZ<-0 //Treat as NOP in ALU
							//DO NOT WRITE BACK... // ADD CONTROL SIGNAL RF_WILL_WRITE and send to StageTracker
						(2.) PC<-Rsrc1	
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'b0000_1000001_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 0;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 2;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  17;								// JSR
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 2;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 1;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface

					/*JSR*/
					/*_____________________(JSR)________________________
					(JSR)DESCRIPTION:
						(1.) Jump to Subroutine //Address of subroutine in Register Rsrc1, 
														//store return address in LINK register, 
														//which is always R30.
					____________________________________________________	
					(JSR)RTL EQUIVELENT:
						(1.) RZ<-0 //Treat as NOP in ALU
							//DO NOT WRITE BACK... // ADD CONTROL SIGNAL RF_WILL_WRITE and send to StageTracker
							//But Write Return Address To Memory
						(2.) PC<-Rsrc1	
						(2.) R[30]<-Return_Address // Save PC_Temp
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'b0000_1000011_000000: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 0;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 2;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 0;	 								// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  18;								// RTS
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 1;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 0;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 0;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					
					/*RTS*/
					/*_____________________(RTS)________________________
					(RTS)DESCRIPTION:
						(1.) Return from Subroutine //Rsrc1 contains the register number
															 // for the link register (R30).
															 // Rsrc1=30

					____________________________________________________	
					(RTS)RTL EQUIVELENT:
						(3.) RZ<-0//Treat as ALU NOP
						(4.) PC<-[RA]// [LINK] // Return Address(Stage 4)
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
			
				
				
				//default:/*ERROR*/;
					/*_____________________(ERROR)______________________
					(ERROR)DESCRIPTION:
						(1.) INSTRUCTION NOT RECOGNIZED
					____________________________________________________	
					(ERROR)RTL EQUIVELENT:
						(1.) RZ<-'d4294967296 // 2^32 // OUTPUT ALL ONES 
						(2.) INR_FLAG <- 'b1 //"SET "INSTRUCTION NOT RECOGNIZED" ERROR FLAG IN CCR"
						(2.a) ANNOTATE INSTRUCTION FORMAT (a) Instruction_Format=='d0
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) INR_FLAG
					____________________________________________________*/
		
		
			//endcase//END FORMAT (a) Instruction_Format=='d0
			//end// END IF FORMAT (a) Instruction_Format=='d0
		
		//Instruction Format (B)		     BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
		//(RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0]) Instruction Format (b) Instruction Format (b) Instruction Format (b)
		//else if(Instruction_Format=='d1) begin//  BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
			//casex(OP_Code[5:0])
							
				17'bxxxx_xxxxxxx_100010: begin
					Extend[1:0] = 0; 								//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  32;								// LD# 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*LD#*/
					/*_____________________(LD#)________________________
					(LD#)DESCRIPTION:
						(1.) Load Immediate  //The value in the immediate field is sign extended and placed in the Rdst.
					____________________________________________________	
					(LD#)RTL EQUIVELENT:
						(1.) RZ<- RB // {6{Instruction[31]},Instruction[31:6]}  // {n{m}} Replicate value m, n times For Sign Extending
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end

				17'bxxxx_xxxxxxx_100011: begin
					Extend[1:0] = 1; 								//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;									// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst// Rdst <- IR_26-22		// Used in format (b)
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  33;								// LDU# 
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*LDU#*/
					/*_____________________(LDU#)________________________
					(LDU#)DESCRIPTION:
						(1.) Load Unsigned Immediate
					____________________________________________________	
					(LDU#)RTL EQUIVELENT:
						(1.) RZ<-{6{0},Instruction[31:6]}  //The value in the immediate field is sign extended and placed in the Rdst.
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
					
				17'bxxxx_xxxxxxx_000001: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  34;								// ADD#
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*ADD #*/
					/*_____________________(ADD #)________________________
					(ADD #)DESCRIPTION:
						(1.) Add Immediate //The immediate value is sign extended	//format (b)
												 //and added to the contents of Rsrc.
												 //The result is stored in Rdst
					____________________________________________________	
					(ADD #)RTL EQUIVELENT:
						(1.) RZ<-RA+RB	//Treat as ALU Addition // Is a "2's comp addition" a subtraction ??????????????
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0)) //Overflow Occurs When (Adding) Two (Positives) And Get A (Negative) or (Adding) Two (Negatives) And Get A (Positive)
								// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA+RB)[32];
					____________________________________________________*/
					end									
				
				17'bxxxx_xxxxxxx_000100: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  35;								// SUB#
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*SUB #*/
					/*_____________________(SUB #)________________________
					(SUB #)DESCRIPTION:
						(1.) Subtract Immediate //The immediate value is sign extended
														// and subtracted from the contents of Rsrc.
														//The result is stored in Rdst
					____________________________________________________	
					(SUB #)RTL EQUIVELENT:
						(1.) RZ<-RA-RB	//Treat as ALU Subtraction // Is a "2's comp addition" a subtraction ??????????????
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0)) //Overflow Occurs When (Subtracting) A (Positive By A Negative) And Getting A (Negative) or (Subtracting) A (Negative By A Positive) And Getting A (Positive)
								//Then// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA-RB)[32];
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_001000: begin				 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  36;								// AnD#
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*AnD #*/// Bitwise AnD Immediate "camel_backed" to keep seperate from ADDITION
					/*_____________________(AnD #)________________________
					(AnD #)DESCRIPTION:
						(1.) Bitwise AnD Immediate //The immediate value is padded with zeros
															//on the left and ANDed with the contents of Rsrc.
															//The result is place in Rdst
					____________________________________________________	
					(AnD #)RTL EQUIVELENT:
						(1.) RZ<- [RA]&[RB] //ALU Bitwise AnD
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_001001: begin				 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  37;								// OR#
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*OR #*/
					/*_____________________(OR #)________________________
					(OR #)DESCRIPTION:
						(1.) Bitwise OR Immediate 
					____________________________________________________	
					(OR #)RTL EQUIVELENT:
						(1.) RZ<- [RA]|[RB] //ALU Bitwise OR
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_001011: begin				 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  38;								// XOR#
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*XOR #*/
					/*_____________________(XOR #)________________________
					(XOR #)DESCRIPTION:
						(1.) Bitwise Exclusive OR Immediate //Exclusive OR
																		// is a logical operation
																		// that outputs true whenever
																		// both inputs differ ie:
																		//(one is true, the other is false).
					____________________________________________________	
					(XOR #)RTL EQUIVELENT:
						(1.) RZ<- [RA]^[RB]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_001100: begin		 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 1;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  39;								// BEQ
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*BEQ*/
					/*_____________________(BEQ)________________________
					(BEQ)DESCRIPTION:
						(1.) Branch if EQual //If the contents of the two registers 
													// are equal, add the 2's complement
													// immediate value to the PC

					____________________________________________________	
					(BEQ)RTL EQUIVELENT:
						(1.) RZ<-RA-RB //RSRC-RDST //Treat As A Subtraction and Check The Zero Flag // ASSUMING UNSIGNED RA and RB...
						(2.) if(ZERO_FLAG==1)//RA=RB then RA-RB=0...
								PC<- PC+Immediate // Is a "2's comp addition" a subtraction ??????????????
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0)) //Overflow Occurs When (Subtracting) A (Positive By A Negative) And Getting A (Negative) or (Subtracting) A (Negative By A Positive) And Getting A (Positive)
								//Then// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA-RB)[32];
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_001010: begin				 
					Extend[1:0] = 0; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 1;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  40;								// BNE
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 0;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 0;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*BNE*/
					/*_____________________(BNE)________________________
					(BNE)DESCRIPTION:
						(1.) Branch if Not Equal //If the contents of the two registers 
														 // are NOT equal, add the 2's complement
														 // immediate value to the PC

					____________________________________________________	
					(BNE)RTL EQUIVELENT:
						(1.) RZ<-RA-RB  //Treat As A Subtraction and Check The Zero Flag // ASSUMING UNSIGNED RA and RB...
						(2.) if(ZERO_FLAG==0)//RA!=RB then RA-RB!=0...
								PC<- PC+Immediate // Is a "2's comp addition" a subtraction ??????????????
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0)) //Overflow Occurs When (Subtracting) A (Positive By A Negative) And Getting A (Negative) or (Subtracting) A (Negative By A Positive) And Getting A (Positive)
								//Then// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA-RB)[32];
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_001111: begin			 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 1;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  41;								// BLT
					MA_Select_Memory_Stage = 1;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 0;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 0;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*BLT*/
					/*_____________________(BLT)________________________
					(BLT)DESCRIPTION:
						(1.) Bacon Lettuce Tomato // If the unsigned contents of
							  Branch if Less Than  // Rsrc is less than the contents of Rdst,
														  //add the 2's complement immediate value to the PC
					____________________________________________________	
					(BLT)RTL EQUIVELENT:
						(1.) RA<-RSRC1
						(2.) RB<-RSRC2
						(3.) RZ<-RA-RB //Treat As A Subtraction and Check The Zero Flag // ASSUMING UNSIGNED RA and RB...
						(4.) if(NEGATIVE_FLAG==1) //RA<RB then RA-RB=(-)|x|
								PC<-PC+IMMEDIATE_BLOCK_OUT // Is a "2's comp addition" a subtraction ??????????????
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0)) //Overflow Occurs When (Subtracting) A (Positive By A Negative) And Getting A (Negative) or (Subtracting) A (Negative By A Positive) And Getting A (Positive)
								//Then// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA-RB)[32];
					____________________________________________________*/
					end
				
									
				17'bxxxx_xxxxxxx_100000: begin			 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  42;								// LDA
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 1;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 1;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface  
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*LDA*/
					/*_____________________(LDA)________________________
					(LDA)DESCRIPTION:
						(1.) Load Absolute // The immediate value is zero-filled
												 // to the left and used as an address. 
												 // Rdst is then loaded from this address.
												 // This requires the adder in Figure 5.10
												 // to be able to just pass the immediate value
												 // through (without adding to the PC),
												 // which requires an additional control line
												 // that is not implied by Figure 5.10

					____________________________________________________	
					(LDA)RTL EQUIVELENT:
						(0.) NOTE We Used RZ as the address instead of loading PC with the immediate value.
						(1.) RZ<-RB //Treat as LOAD in ALU
							//DO NOT WRITE BACK... // ADD CONTROL SIGNAL RF_WILL_WRITE and send to StageTracker
						(2.) PC<-{17'bxxxx_xxxxxxx_000000,Instruction[31:6]} // Via MuxPC

					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_010000: begin			 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  43;								// STA
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 1;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 0;	 	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface  
					Memory_Z_RM_WM_RF_WriteBack_Stage= 0;	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface  
					
					/*STA*/
					/*_____________________(STA)________________________
					(STA)DESCRIPTION:
						(1.) STore Absolute // The immediate value is zero-filled
												  // to the left and used as an address.
												  // Rdst (yes, Rdst!) is then stored to
												  // this address. Requires modifications
												  // similar to the LDA instruction

					____________________________________________________	
					(STA)RTL EQUIVELENT:
						(1.) RZ<- RB // {17'bxxxx_xxxxxxx_0,Instruction[31:6]} // ALU Pass RB just Like other Loads...
						(2.) (RZ) <-[RM] // RDST...
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_100001: begin			 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  44;								// LDIX
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 1;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*LDIX*/
					/*_____________________(LDIX)________________________
					(LDIX)DESCRIPTION:
						(1.) LoaD IndeXed // The unsigned immediate value is added
												// to the contents of Rsrc to obtain the EA.
												// Rdst is then loaded from the memory location EA
					____________________________________________________	
					(LDIX)RTL EQUIVELENT:
						(1.) RZ<-RA+RB //Treat like an ADD //{17'bxxxx_xxxxxxx_000000,Instruction[31:6]}
						(2.) RY<-MEMORY //EA=[RZ]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) OVERFLOW_FLAG
							// if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0)) //Overflow Occurs When (Adding) Two (Positives) And Get A (Negative) or (Adding) Two (Negatives) And Get A (Positive)
								// OVERFLOW_FLAG=1;
						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
							//ZERO_FLAG=(RZ==0);
						(3.) NEGATIVE_FLAG
							//NEGATIVE_FLAG=RZ[31];
						(4.) CARRY_FLAG
							//CARRY_FLAG = (RA+RB)[32];
					____________________________________________________*/
					end
					
									
				17'bxxxx_xxxxxxx_010001: begin			 
					Extend[1:0] = 1; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 0;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 0;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  45;								// SDIX
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 1;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 2;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					Memory_Z_RM_WM_RF_WriteBack_Stage = 0;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					/*STIX*/
					/*_____________________(STIX)________________________
					(STIX)DESCRIPTION:
						(1.) STore IndeXed // The unsigned immediate value is added
											    // to the contents of Rsrc to obtain the EA.
												 // Rdst is then stored to the memory location EA
					____________________________________________________	
					(STIX)RTL EQUIVELENT:
						(1.) RZ<- RA + RB // TREAT AS ADD // RA+{6{Instruction[31]},Instruction[31:6]} 
						(2.) (RZ)<-[RM] // RDST...
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				//default:/*ERROR*/;
					/*_____________________(ERROR)______________________
					(ERROR)DESCRIPTION:
						(1.) INSTRUCTION NOT RECOGNIZED
					____________________________________________________	
					(ERROR)RTL EQUIVELENT:
						(1.) RZ<-'d4294967296-1  // 2^32-1 // OUTPUT Mostly ONES_ ALL But The Least Significant Bit // This Is To Indicate The Instruction Format
						(2.) INR_FLAG <- 'b1 //"SET "INSTRUCTION NOT RECOGNIZED" ERROR FLAG IN CCR"
						(2.a) ANNOTATE INSTRUCTION FORMAT (b) Instruction_Format=='d1
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) INR_FLAG
					____________________________________________________*/
			
			
			//endcase//END FORMAT (b) Instruction_Format=='d1
		//end// END IF FORMAT (b) Instruction_Format=='d1
		
		//Instruction Format (C)		     CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
		//(IMMEDIATE_VALUE[31:6])(OPCODE[5:0]) Instruction Format (c) Instruction Format (c) Instruction Format (c) Instruction Format (c) 
		//else if(Instruction_Format=='d2) begin//  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
			//casex(OP_Code[5:0])

				17'bxxxx_xxxxxxx_110000: begin	//check				 
					Extend[1:0] = 2; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 1;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 2;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  64;								// BRA
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 0;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface  
					Memory_Z_RM_WM_RF_WriteBack_Stage = 0;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*BRA*/
					/*_____________________(BRA)________________________
					(BRA)DESCRIPTION:
						(1.) Unconditional Branch // Add the 2's complement immediate value to the PC.
														  // (wider address range than Bxx, probably more than
														  // we'll actually be able to test)
															
					____________________________________________________	
					(BRA)RTL EQUIVELENT:
						(1.) RZ<- 0 //Treat as NOP
						(2.) PC<- PC+IMMEDIATE_BLOCK_OUT // Is a "2's comp addition" a subtraction ??????????????
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'bxxxx_xxxxxxx_110001: begin			 
					Extend[1:0] = 2; 								// (Extend) 									[3,2,1,0] 	= [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select[1:0] = 1;							// (PC_Select) 								[3,2,1,0]	= [Immediate, Immediate, NextAdd, RA_Out]	// Value into PC
					INC_Select = 1;								// (INC_Select) 								[1,0]			= [Immediate, 1]	// Increment PC by
					C_Select[1:0] = 2;							// (C_Select)									[2,1,0]		= [LINK,  format (a) IR[21-17], format (b) IR[26-22]]	//Rdst
					B_Select = 1;									// (B_Select)									[1,0] 		= [Immediate, RB_Out]	//	Value into ALU for RB	
					ALU_Op =  65;								// BSR
					MA_Select_Memory_Stage = 0;				// (MA_Select_Memory_Stage)				[1,0]			= [PC, RZ_Out]	// Address to Writeback to in stage 4
					Y_Select[1:0] = 0;							// (Y_Select)									[2,1,0] 		= [Return Address, MEM_Data_Out, RZ_Out]	// Value into RY
					PC_Enable_Execute_Stage = 0;	  			//	(PC_Enable_Execute_Stage)				[1,0] 		= [PC_Enable=1,PC_Enable=0]@ExecuteStage	// To Load PC Again In Execute Stage
					Memory_Z_RM_WM_RF_Memory_Stage = 3;	  	//	(Memory_Z_RM_WM_RF_Memory_Stage)		[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface  
					Memory_Z_RM_WM_RF_WriteBack_Stage = 3;	//	(Memory_Z_RM_WM_RF_WriteBack_Stage)	[3,2,1,0] 	= [Read MEM_Data & Write RegisterFile, Write MEM_Data, Read MEM_Data, High Impedence]	// Memory Interface
					
					/*BSR*/
					/*_____________________(BSR)________________________
					(BSR)DESCRIPTION:
						(1.) Unconditional Branch to SubRoutine // Add the 2's complement immediate value to the PC
																			 // and store return address in the LINK register,
																			 // which is always R30.// We HAVE TO REMEMBER R30 IN OUR INSTRUCTION!!!!!!!!!!!!!!!
																			
					____________________________________________________	
					(BSR)RTL EQUIVELENT:
						(1.) RZ<- 0 // ALU NOP 
							//But Still Write Back LINK REGISTER To Reg File RF_WRITE 
						(2.) PC<- PC+IMMEDIATE_BLOCK_OUT // Is a "2's comp addition" a subtraction ??????????????
						(3.) RY<- Return_Address //Via Y_Select // PC_Temp // LINK REGISTER = RDST = 30;
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
					
				17'b0: begin // Assume NOP
					ALU_Op = 0; //Default To NOP
				end
			
				/*OVERALL ERROR*/
				default: ALU_Op = 0; //Default To NOP
					/*_____________________(ERROR)______________________
					(ERROR)DESCRIPTION:
						(1.) INSTRUCTION NOT RECOGNIZED
					____________________________________________________	
					(ERROR)RTL EQUIVELENT:
						(1.) RZ<-'d4294967296-2  // 2^32-2 // OUTPUT Mostly ONES_ ALL But The Two Least Significant Bits // This Is To Indicate The Instruction Format
						(2.) INR_FLAG <- 'b1 //"SET "INSTRUCTION NOT RECOGNIZED" ERROR FLAG IN CCR"
						(2.a) ANNOTATE INSTRUCTION FORMAT (b) Instruction_Format=='d2
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) INR_FLAG
					____________________________________________________*/
			//endcase//END FORMAT (c) Instruction_Format=='d2
		//end//END IF FORMAT (c) Instruction_Format=='d2
			
			
		//ONLY IF 	
		//else begin
			/*ERROR*/
			/*_____________________(ERROR)______________________
			(ERROR)DESCRIPTION:
				(1.) INSTRUCTION FORMAT NOT RECOGNIZED
			____________________________________________________	
			(ERROR)RTL EQUIVELENT:
				(1.) RZ<-'hF0F0F0F0 // 2^32 // OUTPUT Alternating 1111's and 0000's 
				(2.) IFNR_FLAG <- 'b1 // "SET "INSTRUCTION FORMAT NOT RECOGNIZED" ERROR FLAG IN CCR"
				(2.a) ANNOTATE BAD INSTRUCTION FORMAT
			____________________________________________________
			FLAGS TO UPDATE FOR THIS OPPERATION:
				(1.) IFNR_FLAG
			____________________________________________________*/
		//end//END FORMAT NOT RECOGNIZED
		
		endcase//END ALL FORMATS CASEX 
end// END ALWAYS@(CLOCK)
			
endmodule 