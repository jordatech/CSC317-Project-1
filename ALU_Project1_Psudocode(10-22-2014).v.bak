//ALU - Arithmatical Logical Unit
//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/21/2014

module ALU_Project1(
input [31:0] instruction , RA, RB, // Since RB Is Muxed In We May Use RBI = RB_IMMEDIATE To Specify An Imediate Value
input [1:0] InstructionFormat, //Formats (a,b,c) (0,1,2)
input enable, clock,
output wire[31:0] RZ, CCR,// Out and Condition Control Register
								  //CCR 32-Bit Format [...IFNR, INR , N, Z, V, C]
								  //CCR [... Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]
reg INFR_FLAG, INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG // FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
				
);


// INSTRUCTION FORMATS:
// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
	//InstructionFormat='d0;
// Instruction Format (b) (RSRC1[31:27])(RSRC2[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
	//InstructionFormat='d1;
// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
	//InstructionFormat='d2;

// (RTL) Register Transfer Language Description References:
//	(1.)http://www.ece.uprm.edu/~nayda/Courses/Inel4215F03/Lectures/LectureSept22.pdf
// (2.)http://repository.cmu.edu/cgi/viewcontent.cgi?article=2666&context=compsci


always @(posedge clock)
	begin

		//Instruction Format (a)		 AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA						
		//(RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0]) Instruction Format (a)	Instruction Format (a)	Instruction Format (a)	
		if(InstructionFormat=='d0) //  AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
		
			casex(instruction[16:0])
				
				
				17'bxxxx_xxxxxxx_111111: /*NOP*/;
					/*_____________________(NOP)________________________
					(NOP)DESCRIPTION:
						(1.) No Operation  // Stall
					____________________________________________________	
					(NOP)RTL EQUIVELENT:
						(1.) "Do Nothing"
					____________________________________________________*/
					
				
				17'b0000_0000001_000000: /*ADD*/;
					/*_____________________(ADD)________________________
					(ADD)DESCRIPTION:
						(1.) Addition
					____________________________________________________	
					(ADD)RTL EQUIVELENT:
						(1.) RZ<- [RA]+[RB]
					____________________________________________________*/
				
				
				17'b0000_0000100_000000: /*SUB*/;
					/*_____________________(SUB)________________________
					(SUB)DESCRIPTION:
						(1.) Subtraction
					____________________________________________________	
					(SUB)RTL EQUIVELENT:
						(1.) RZ<- [RA]-[RB]
					____________________________________________________*/

					
				17'b0000_0001000_000000: /*AnD*/;// Bitwise AnD "camel_backed" to keep seperate from ADDITION
					/*_____________________(AnD)________________________
					(AnD)DESCRIPTION:
						(1.) Bitwise AnD
					____________________________________________________	
					(AnD)RTL EQUIVELENT:
						(1.) RZ<- [RA]&[RB]
					____________________________________________________*/
				
				
				17'b0000_0001001_000000: /*OR*/;
					/*_____________________(OR)________________________
					(OR)DESCRIPTION:
						(1.) Bitwise OR
					____________________________________________________	
					(ADD)RTL EQUIVELENT:
						(1.) RZ<- [RA]|[RB]
					____________________________________________________*/
				
				
				17'b0000_0001010_000000: /*NEG*/;
					/*_____________________(NEG)________________________
					(NEG)DESCRIPTION:
						(1.) (Two's) Complement  //To get the two's complement of a binary number, the bits are inverted, or "flipped", by using the bitwise NOT operation; the value of 1 is then added to the resulting value, ignoring the overflow which occurs when taking the two's complement of 0.
					____________________________________________________	
					(NEG)RTL EQUIVELENT:
						(1.) RZ<- -[RA]
					____________________________________________________*/

				
				17'b0000_0001011_000000: /*XOR*/;
					/*_____________________(XOR)________________________
					(XOR)DESCRIPTION:
						(1.) Bitwise Exclusive OR // Exclusive OR is a logical operation that outputs true whenever both inputs differ (one is true, the other is false).
					____________________________________________________	
					(XOR)RTL EQUIVELENT:
						(1.) RZ<- [RA]^[RB]
					____________________________________________________*/
					
					
				17'b0000_0001100_000000: /*COMP*/;
					/*_____________________(COMP)________________________
					(COMP)DESCRIPTION:
						(1.) Bitwise (One's) Complement
					____________________________________________________	
					(COMP)RTL EQUIVELENT:
						(1.) RZ<- ~[RA]
						(2.) //??????//Do We Need To Assign The CARRY_FLAG
					____________________________________________________*/
				
				
				17'b0000_0010000_000000: /*LSR*/;
					/*_____________________(LSR)________________________
					(LSR)DESCRIPTION:
						(1.) Logical Shift Right  // Shift One Bit Position Only
					____________________________________________________	
					(LSR)RTL EQUIVELENT:
						(1.) RZ<- [RA] >> 1
						(2.) CARRY_FLAG<- [RA[0]] // Carry Flag From LSB On RHS [0]
					____________________________________________________*/

				
				17'b0000_0010001_000000: /*ASR*/;
					/*_____________________(ASR)________________________
					(ASR)DESCRIPTION:
						(1.) Arithmetic Shift Right  // Arithmetic Shifts Sign Extend // Shift One Bit Position Only
					____________________________________________________	
					(ASR)RTL EQUIVELENT:
						(1.) RZ<- [RA] >>> 1
						(2.) CARRY_FLAG<- [RA[0]] // Carry Flag From LSB On RHS [0]
					____________________________________________________*/
		

				
				17'b0000_0010011_000000: /*LSL_ASL*/;  // LSL Is The Same As ASL , Back Fills With Zeros
					/*_____________________(LSL_ASL)________________________
					(LSL_ASL)DESCRIPTION:
						(1.) Logical/Arithmatical Shift Left  // Shift One Bit Position Only
					____________________________________________________	
					(LSL_ASL)RTL EQUIVELENT:
						(1.) RZ<- [RA] << 1  //  RZ<- [RA] <<< 1
						(2.) CARRY_FLAG<- [RA[31]] // Carry Flag From MSB On LHS [31]
					____________________________________________________*/
		

				
				17'b0000_0011001_000000: /*ROR*/;
					/*_____________________(ROR)________________________
					(ROR)DESCRIPTION:
						(1.) Rotate Right  // By One Bit Position
					____________________________________________________	
					(ROR)RTL EQUIVELENT:
						(1.) RZ<- {RA[0],RA[31:1]} // Bring The CARRY_FLAG Back Arround, No Loss Of Data...
						(2.) CARRY_FLAG<- [RA[0]] // Carry Flag From LSB On RHS [0]
					____________________________________________________*/
		
		
				17'b0000_0011010_000000: /*ROL*/;
					/*_____________________(ROL)________________________
					(ROL)DESCRIPTION:
						(1.) Rotate Left  // By One Bit Position
					____________________________________________________	
					(ROL)RTL EQUIVELENT:
						(1.) RZ<- {RA[30:0],RA[31]} // Bring The CARRY_FLAG Back Arround, No Loss Of Data...
						(2.) CARRY_FLAG<- [RA[31]] // Carry Flag From MSB On LHS [31]
					____________________________________________________*/
						
						
				17'b0000_0100000_000000: /*MOVE*/;
					/*_____________________(MOVE)________________________
					(MOVE)DESCRIPTION:
						(1.) Move // Copy
					____________________________________________________	
					(MOVE)RTL EQUIVELENT:
						(1.) RZ<-[RA]
					____________________________________________________*/
				
				
				17'b0000_0100001_000000: /*LBI*/;
					/*_____________________(LBI)________________________
					(LBI)DESCRIPTION:
						(1.) Load Base With Index
					____________________________________________________	
					(LBI)RTL EQUIVELENT:
						(1.) RZ<-(Ri,Rj) //EA = [RA]+[RB]
						//!!!!!!!// Have To Fetch From Memory
						//???????// HOW IS AN (LBI) DIFFERENT FROM AN (ADD) FROM THE ALU's PERSPECTIVE
						//???????// DO WE NEED AN "IS ADDRESS" CONTROL SIGNAL IN THE CCR
					____________________________________________________*/

					
				17'b0000_0100010_000000: /*LDRI*/;
					/*_____________________(LDRI)________________________
					(LDRI)DESCRIPTION:
						(1.) Load Register Indirect
					____________________________________________________	
					(LDRI)RTL EQUIVELENT:
						(1.) RZ<-(RB) // EA=[RB]
						//!!!!!!!// Have To Fetch From Memory
						//???????// AGAIN DO WE NEED AN "IS ADDRESS" CONTROL SIGNAL IN THE CCR
					____________________________________________________*/
				
				
				default:/*ERROR*/;
					/*_____________________(ERROR)______________________
					(ERROR)DESCRIPTION:
						(1.) INSTRUCTION NOT RECOGNIZED
					____________________________________________________	
					(ERROR)RTL EQUIVELENT:
						(1.) RZ<-'d4294967296 // 2^32 // OUTPUT ALL ONES 
						(2.) INR <- 'b1 //"SET "INSTRUCTION NOT RECOGNIZED" ERROR FLAG IN CCR"
						(2.a) ANNOTATE INSTRUCTION FORMAT (a) InstructionFormat=='d0
					____________________________________________________*/
		
		
			endcase//END FORMAT (a) InstructionFormat=='d0
		
		
		//Instruction Format (B)		     BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
		//(RSRC1[31:27])(RSRC2[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0]) Instruction Format (b) Instruction Format (b) Instruction Format (b)
		elseif(InstructionFormat=='d1) //  BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
			casex(instruction[5:0])
				
				
				5'b111111: /*NOP*/;
					/*_____________________(NOP)________________________
					(NOP)DESCRIPTION:
						(1.) No Operation  // Stall
					____________________________________________________	
					(NOP)RTL EQUIVELENT:
						(1.) "Do Nothing"
						
					____________________________________________________*/
				
				
				default:/*ERROR*/;
					/*_____________________(ERROR)______________________
					(ERROR)DESCRIPTION:
						(1.) INSTRUCTION NOT RECOGNIZED
					____________________________________________________	
					(ERROR)RTL EQUIVELENT:
						(1.) RZ<-'d4294967296-1  // 2^32-1 // OUTPUT Mostly ONES_ ALL But The Least Significant Bit // This Is To Indicate The Instruction Format
						(2.) INR <- 'b1 //"SET "INSTRUCTION NOT RECOGNIZED" ERROR FLAG IN CCR"
						(2.a) ANNOTATE INSTRUCTION FORMAT (b) InstructionFormat=='d1
					____________________________________________________*/
			
			
			endcase//END FORMAT (b) InstructionFormat=='d1
		
		
		//Instruction Format (C)		     CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
		//(IMMEDIATE_VALUE[31:6])(OPCODE[5:0]) Instruction Format (c) Instruction Format (c) Instruction Format (c) Instruction Format (c) 
		elseif(InstructionFormat=='d2) //  CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
			casex(instruction[5:0])

			
				5'b111111: /*NOP*/;
					/*_____________________(NOP)________________________
					(NOP)DESCRIPTION:
						(1.) No Operation  // Stall
					____________________________________________________	
					(NOP)RTL EQUIVELENT:
						(1.) "Do Nothing"
					____________________________________________________*/
				
							
				5'100010: /*LD#*/;
					/*_____________________(LD#)________________________
					(LD#)DESCRIPTION:
						(1.) Load Immediate  //The value in the immediate field is sign extended and placed in the Rdst.
					____________________________________________________	
					(LD#)RTL EQUIVELENT:
						(1.) RZ<-{6{instruction[31]},instruction[31:6]}  // {n{m}} Replicate value m, n times For Sign Extending
					____________________________________________________*/
				
							
				5'100011: /*LDU#*/;
					/*_____________________(LDU#)________________________
					(LDU#)DESCRIPTION:
						(1.) Load Unsigned Immediate
					____________________________________________________	
					(LDU#)RTL EQUIVELENT:
						(1.) RZ<-{6{0},instruction[31:6]}  //The value in the immediate field is sign extended and placed in the Rdst.
					____________________________________________________*/
					
					
				default:/*ERROR*/;
					/*_____________________(ERROR)______________________
					(ERROR)DESCRIPTION:
						(1.) INSTRUCTION NOT RECOGNIZED
					____________________________________________________	
					(ERROR)RTL EQUIVELENT:
						(1.) RZ<-'d4294967296-2  // 2^32-2 // OUTPUT Mostly ONES_ ALL But The Two Least Significant Bits // This Is To Indicate The Instruction Format
						(2.) INR <- 'b1 //"SET "INSTRUCTION NOT RECOGNIZED" ERROR FLAG IN CCR"
						(2.a) ANNOTATE INSTRUCTION FORMAT (b) InstructionFormat=='d2
					____________________________________________________*/
			endcase//END FORMAT (c) InstructionFormat=='d2
			
		else
			/*ERROR*/;
			/*_____________________(ERROR)______________________
			(ERROR)DESCRIPTION:
				(1.) INSTRUCTION FORMAT NOT RECOGNIZED
			____________________________________________________	
			(ERROR)RTL EQUIVELENT:
				(1.) RZ<-'hF0F0F0F0 // 2^32 // OUTPUT Alternating 1111's and 0000's 
				(2.) IFNR <- 'b1 // "SET "INSTRUCTION FORMAT NOT RECOGNIZED" ERROR FLAG IN CCR"
				(2.a) ANNOTATE BAD INSTRUCTION FORMAT
			____________________________________________________*/
		
	end //END ALWAYS



// Assigning Flags - Hooking to Condition Control Register
	//CCR 32-Bit Format [...IFNR, INR , N, Z, V, C]
	//CCR [... Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]
assign CCR[0]=CARRY_FLAG;
assign CCR[1]=NEGATIVE_FLAG;
assign CCR[2]=OVERFLOW_FLAG;
assign CCR[3]=ZERO_FLAG;
assign CCR[4]=INR_FLAG;
assign CCR[5]=INFR_FLAG;
assign CCR[31:6]=0; // May Add More Flags/ Control Signals Later

end //END MODULE