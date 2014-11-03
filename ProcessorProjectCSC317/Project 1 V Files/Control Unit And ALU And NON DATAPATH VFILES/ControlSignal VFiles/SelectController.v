// Stage Tracker
// Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 9:05 PM 11/01/2014

module SelectController(
	input [31:0]		OP_Code, 			 
	input [1:0]			Instruction_Format,
	output reg [6:0] 	ALU_Op, 				//Phase 2 has 19 OP_Codes 
	output reg [1:0]	Extend,
							C_Select,
							Y_Select,			
	output reg			NOP_FLAG,			
							PC_Select,
							INC_Select,
							B_Select,
							MA_Select
					
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
//					INC_Select= ; //(INC_select) Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
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
//				MA_Select = ;// (MA_Select) [1,0] = {PC_Out,RZ_Out}
//
//			 //[Write Back]********************
//				//MuxY
//				Y_Select = ;// (Y_Select) [2,1,0] = {Return_Address,RAM1_Data_Out,RZ_Out}

always @(OP_Code)
	begin

		//Instruction Format (a)		 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA						
		//(RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0]) Instruction Format (a)	Instruction Format (a)	Instruction Format (a)	
		if(Instruction_Format=='d0) begin //  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
			casex(OP_Code[16:0])
				17'bxxxx_xxxxxxx_111111: 	begin	// Debugging Purposes
//					Extend[1:0] = 0;
					NOP_FLAG = 1;			//No Operation
//					PC_Select = ;
//					INC_Select= ;
//					C_Select[1:0] = ;
//					B_Select = ;
					ALU_Op =  111111;
//					MA_Select = ;
//					Y_Select[1:0] = ;
					
//					_____________________(NOP)________________________	
//					(NOP)DESCRIPTION:
//						(1.) No Operation  // Stall but take 5 cycles to do it...
//					____________________________________________________	
//					(NOP)RTL EQUIVELENT:
//						(1.) "Do Nothing"
//						//??????// Do we want to do an addative identity ie:(RZ<- 0+[RA])
//						//??????// Do we need a "NOP" flag in the condition control register
//					____________________________________________________
//					FLAGS TO UPDATE FOR THIS OPPERATION:
//						(1.) NONE
//					____________________________________________________
////				ZERO_FLAG <= (RZ==0);
////				NEGATIVE_FLAG <= RZ[31];
					end
					
				17'b0000_0000001_000000:	begin
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0000001;	// ADD 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out) (PC_Temp_Out)
					
//					_____________________(ADD)________________________
//					(ADD)DESCRIPTION:
//						(1.) Addition
//					____________________________________________________	
//					(ADD)RTL EQUIVELENT:
//						(1.) RZ<- [RA]+[RB]
//						(2.) if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0))
//								OVERFLOW_FLAG<- 1
//					____________________________________________________
//					FLAGS TO UPDATE FOR THIS OPPERATION:
//						(1.) OVERFLOW_FLAG
//							// if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0)) //Overflow Occurs When (Adding) Two (Positives) And Get A (Negative) or (Adding) Two (Negatives) And Get A (Positive)
//								// OVERFLOW_FLAG=1;
//						(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
//							//ZERO_FLAG=(RZ==0);
//						(3.) NEGATIVE_FLAG
//							//NEGATIVE_FLAG=RZ[31];
//					____________________________________________________
//					RZ <= RB+RA;
//					if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0))begin
//					OVERFLOW_FLAG <= 1;
					end			
				
				17'b0000_0000100_000000: begin
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0000100; 	// SUB
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out) (PC_Temp_Out)
					
//													RZ=RA-RB;
//												 	if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0))begin
//														OVERFLOW_FLAG=1;
//												 	end
//												 	ZERO_FLAG=(RZ==0);
//												 	NEGATIVE_FLAG=RZ[31];

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
					____________________________________________________*/
					end
					
				17'b0000_0001000_000000: begin
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0001000;	// AND 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0001001;	// OR
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
										
					/*OR*/;
					/*_____________________(OR)________________________
					(OR)DESCRIPTION:
						(1.) Bitwise OR
					____________________________________________________	
					(ADD)RTL EQUIVELENT:
						(1.) RZ<- [RA]|[RB]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
					
				17'b0000_0001010_000000: begin
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0001010;	// NEG 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					
					/*NEG*/
					/*_____________________(NEG)________________________
					(NEG)DESCRIPTION:
						(1.) (Two's) Complement  //To get the two's complement of a binary number, the bits are inverted, or "flipped", by using the bitwise NOT operation; the value of 1 is then added to the resulting value, ignoring the overflow which occurs when taking the two's complement of 0.
					____________________________________________________	
					(NEG)RTL EQUIVELENT:
						(1.) RZ<- -[RA]
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE // IGNORING OVERFLOW
					____________________________________________________*/

					end
				17'b0000_0001011_000000: begin
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0001011;	// XOR 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					
					/*XOR*/;
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0001100;	// COMP 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0010000;	// LSR 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
					
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0010001;	// ASR 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0010011;	// LSL_ASL 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*LSL_ASL*/;  // LSL Is The Same As ASL , Back Fills With Zeros
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0011001;	// ROR
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*ROR*/;
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0011010;	// ROL 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*ROL*/;
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0100000;	// MOVE 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*MOVE*/;
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0100001;	// LBI 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*LBI*/;
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
					Extend[1:0] = 0; 		//
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 1;	// Rdst <- IR_21-17		// Used in format (a)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  0100010;	// LDRi 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*LDRI*/;
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
				
				
				//5'b111111: /*NOP*/;
					/*_____________________(NOP)________________________
					(NOP)DESCRIPTION:
						(1.) No Operation  // Stall
					____________________________________________________	
					(NOP)RTL EQUIVELENT:
						(1.) "Do Nothing"
						
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
				
				6'b100010: begin
					Extend[1:0] = 2; 		//(Extend) [3,2,1,0] = [(format (b) zero extend),(format (b) sign extend),(format (a) zero extend),(format (a) sign extend)]
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 0;	// Rdst <- IR_26-22		// Used in format (b)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  100010;		// LD# 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*LD#*/;
					/*_____________________(LD#)________________________
					(LD#)DESCRIPTION:
						(1.) Load Immediate  //The value in the immediate field is sign extended and placed in the Rdst.
					____________________________________________________	
					(LD#)RTL EQUIVELENT:
						(1.) RZ<-{6{Instruction[31]},Instruction[31:6]}  // {n{m}} Replicate value m, n times For Sign Extending
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
					end
							
				6'b100011: begin
					Extend[1:0] = 3; 		//(Extend) [3,2,1,0] = [(format (b) zero extend),(format (b) sign extend),(format (a) zero extend),(format (a) sign extend)]
					NOP_FLAG = 0;			// Not NOP					// 1 in NOP only
					PC_Select = 1;			// PC <- Adder_Out		// 0 => PC <- RA_Out, used to jump to a specific instruction 
					INC_Select= 0;			// PC <- PC + 1			// 1 => PC <- PC + Immediate, used for BranchOffset
					C_Select[1:0] = 0;	// Rdst <- IR_26-22		// Used in format (b)
					B_Select = 0;			// MuxB_Out <- RB_Out	// 1 => MuxB_Out <- Immediate, use when you have to use an immediate value (LD#, LDU#, ADD#, etc.)
					ALU_Op =  100011;		// LDU# 
					MA_Select = 1;			// MEM_Address <- PC		// 0 => MEM_Address <- RZ_Out, used for writing back?
					Y_Select[1:0] = 0;	// MuxY_Out <- RZ_Out	// 1 => MuxY_Out <- MEM_Data[RZ_Out]	// 2 => MuxY_Out <- Return Address(PC_Temp_Out)
				
					/*LDU#*/;
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

			
				//5'b111111: /*NOP*/;
					/*_____________________(NOP)________________________
					(NOP)DESCRIPTION:
						(1.) No Operation  // Stall
					____________________________________________________	
					(NOP)RTL EQUIVELENT:
						(1.) "Do Nothing"
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/
								
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