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
							WillWriteTo_RF_M_Z_Z,			
	output reg			PC_Select,
							INC_Select,
							B_Select,
							MA_Select_Memory_Stage
							
					
);
// What should we select for each Operational Code?
			// Condition Control Register
			//	(!!!!!!)output reg			CCR_Enable, // DISABLE IF NOP
			
			
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
//					PC_Select = ; //(PC_select) Increment PC "0"->jump to "RA" .... "1"->inc by MuxINC  // MuxPC = PC_select ? NextAdd: RA
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
		if(Instruction_Format=='d0) begin //  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
			casex(OP_Code[16:0])
				17'bxxxx_xxxxxxx_111111: 	begin	// Debugging Purposes
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0;	// NOP
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out) (PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 2'b00;  // [00]->RegisterFile ,[01]->Memory ,[1x]->Do Not Write Back
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (b) zero extend),(format (b) sign extend),(format (a) zero extend),(format (a) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  1;	// ADD 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out) (PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (b) zero extend),(format (b) sign extend),(format (a) zero extend),(format (a) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  2; 	// SUB
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out) (PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					

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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (b) zero extend),(format (b) sign extend),(format (a) zero extend),(format (a) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  3;	// AND 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  4;	// OR
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
										
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  5;	// NEG 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  6;	// XOR 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  7;	// COMP 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  8;	// LSR 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  9;	// ASR 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  10;	// LSL_ASL 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  11;	// ROR
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  12;	// ROL 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  13;	// MOVE 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// EA = (RZ)// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
					/*MOVE*/
					/*_____________________(MOVE)________________________
					(MOVE)DESCRIPTION:
						(1.) Move // Copy
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  14;	// LBI 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  15;	// LDRi 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0;	// JMP // NOP 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0;	// JSR // NOP 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  ????????????????????????????????????????????????? 0;	// RTS // NOP  
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
					/*RTS*/
					/*_____________________(RTS)________________________
					(RTS)DESCRIPTION:
						(1.) Return from Subroutine //Rsrc1 contains the register number
															 // for the link register (R30).
															 // Rsrc1=30

					____________________________________________________	
					(RTS)RTL EQUIVELENT:
						?????????????????????????????????????????????????
						1.) Fetch
						2.) RA<- 'd30 ; // Address of the Link Register...
						3.) RZ<-RA // 'd30 // Treat as an Effective Address and load from Memory, back into RSRC1
						4.) MuxY_In <-(RZ) // 'd30 // Again RA is the EA
						5.) RY<-MuxY_Out// [LINK] // Return Address
						6.) RDST<-[RY] // [LINK] // Return Address
						...
						Eventually) PC<-[RA]// [LINK] // Return Address
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
			
				
				
				default:/*ERROR*/;
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
		
		
			endcase//END FORMAT (a) Instruction_Format=='d0
			end// END IF FORMAT (a) Instruction_Format=='d0
		
		//Instruction Format (B)		     BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
		//(RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0]) Instruction Format (b) Instruction Format (b) Instruction Format (b)
		else if(Instruction_Format=='d1) begin//  BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
			casex(OP_Code[5:0])
			
				6'b111111: 	begin	// Debugging Purposes
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0;	// NOP
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out) (PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
				
				6'b100010: begin
					Extend[1:0] = 0; 		//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 0;	// Rdst <- IR_26-22		// Used in format (b)
					B_Select = 1;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  32;		// LD# 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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

				6'b100011: begin
					Extend[1:0] = 1; 		//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 0;	// Rdst <- IR_26-22		// Used in format (b)
					B_Select = 1;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  33;		// LDU# 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
					
					
				6'b000001: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  1;	// ADD
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
					/*ADD #*/
					/*_____________________(ADD #)________________________
					(ADD #)DESCRIPTION:
						(1.) Add Immediate //The immediate value is sign extended
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
				
				6'b000100: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  2;	// SUB 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					
				6'b001000: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  3;	// AnD # // AnD
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					
				6'b001001: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  4;	// OR # // OR 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					
				6'b001011: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  6;	// XOR # // XOR 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					
				6'b001100: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  2; // BEQ // SUB 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
					/*BEQ*/
					/*_____________________(BEQ)________________________
					(BEQ)DESCRIPTION:
						(1.) Branch if EQual //If the contents of the two registers 
													// are equal, add the 2's complement
													// immediate value to the PC

					____________________________________________________	
					(BEQ)RTL EQUIVELENT:
						(1.) RZ<-RA-RB  //Treat As A Subtraction and Check The Zero Flag // ASSUMING UNSIGNED RA and RB...
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
					
				6'b001010: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  2; // BNE // SUB 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					
				6'b001111: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  2; // BLT // SUB 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
				
									
				6'b100000: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0;	// LDA // NOP 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
						(1.) RZ<-0 //Treat as NOP in ALU
							//DO NOT WRITE BACK... // ADD CONTROL SIGNAL RF_WILL_WRITE and send to StageTracker
						(1.) PC<-{6'b000000,Instruction[31:6]} // Via MuxPC
						//!!!!!!!!!!!!!!!// Fix the Instruction Address Generator ; 
						//!!!!!!!!!!!!!!!// by placing the Immediate_Block_Out as an input on MuxPC,
						//!!!!!!!!!!!!!!!// also making the control line PC_Select, 2-bits wide...
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				6'b010000: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  32;	// STA // LD  
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
						(1.) RZ<- RB // {6'b0,Instruction[31:6]} // ALU Pass RB just Like other Loads...
						(2.) (RZ) <-[RM] // RDST...
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				6'b100001: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  1;	// LDIX // ADD 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
					/*LDIX*/
					/*_____________________(LDIX)________________________
					(LDIX)DESCRIPTION:
						(1.) LoaD IndeXed // The unsigned immediate value is added
												// to the contents of Rsrc to obtain the EA.
												// Rdst is then loaded from the memory location EA
					____________________________________________________	
					(LDIX)RTL EQUIVELENT:
						(1.) RZ<-RA+RB //Treat like an ADD //{6'b000000,Instruction[31:6]}
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
					
									
				6'b010001: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  32;	// STIX // LD 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
					/*STIX*/
					/*_____________________(STIX)________________________
					(STIX)DESCRIPTION:
						(1.) STore IndeXed // The unsigned immediate value is added
											    // to the contents of Rsrc to obtain the EA.
												 // Rdst is then stored to the memory location EA
					____________________________________________________	
					(STIX)RTL EQUIVELENT:
						(1.) RZ<- RB // {6{Instruction[31]},Instruction[31:6]} // ALU Pass RB just Like other Loads...
						(2.) (RZ)<-[RM] // RDST...
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				default:/*ERROR*/;
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
			
			
			endcase//END FORMAT (b) Instruction_Format=='d1
		end// END IF FORMAT (b) Instruction_Format=='d1
		
		//Instruction Format (C)		     CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
		//(IMMEDIATE_VALUE[31:6])(OPCODE[5:0]) Instruction Format (c) Instruction Format (c) Instruction Format (c) Instruction Format (c) 
		else if(Instruction_Format=='d2) begin//  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
			casex(OP_Code[5:0])

			
				6'b111111: 	begin	// Debugging Purposes
					Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0;	// NOP
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out) (PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					
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
	
				6'b110000: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0;	// BRA // NOP 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
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
					
				6'b110000: begin				 
					/*Extend[1:0] = 0; 		//Not used in format (a)	//(Extend) [3,2,1,0] = [(format (c) zero extend),(format (c) sign extend),(format (b) zero extend),(format (b) sign extend)]
					PC_Select = 1;			//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff 
					INC_Select = 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  65;	// BSR // NOP 
					MA_Select_Memory_Stage = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 1;	// MuxY_Out <- MEM_Data[RZ_Out] // 0 => MuxY_Out <- RZ_Out	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					WillWriteTo_RF_M_Z_Z = 0;  //Not Writing To Memory
					*/
					/*BSR*/
					/*_____________________(BSR)________________________
					(BSR)DESCRIPTION:
						(1.) Unconditional Branch to SubRoutine // Add the 2's complement immediate value to the PC
																			 // and store return address in the LINK register,
																			 // which is always R30.
																			
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
					
				default:/*ERROR*/;
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
			endcase//END FORMAT (c) Instruction_Format=='d2
		end//END IF FORMAT (c) Instruction_Format=='d2
			
			
		//ONLY IF 	
		else begin
			/*ERROR*/;
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
		end//END FORMAT NOT RECOGNIZED
end// END ALWAYS@(CLOCK)


				
endmodule 