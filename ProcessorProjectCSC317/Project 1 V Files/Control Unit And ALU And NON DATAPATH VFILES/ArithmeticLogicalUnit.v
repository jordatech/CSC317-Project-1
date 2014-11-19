//ALU - Arithmatical Logical Unit
//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/21/2014
//Revision 10-28-2014

//ArithmeticLogicalUnit ALU1(.InstructionFormat(),.Clock(),.Instruction(),.RA(),.RB(),.RZ(),.INR_FLAG(),.ZERO_FLAG(),.OVERFLOW_FLAG(),.NEGATIVE_FLAG(),.CARRY_FLAG());

module ArithmeticLogicalUnit(
input wire [31:0] ALU_Op , RA, RB, // Since RB Is Muxed In We May Use RBI = RB_IMMEDIATE To Specify An Imediate Value
input Clock,
output reg [31:0] RZ, // Out and Condition Control Register
								  //CCR 32-Bit Format [...NOP, IFNR, INR , N, Z, V, C]
								  //CCR [... No Operation, Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]
input wire NOP_FLAG,
output reg /*NOP_FLAG, INFR_FLAG*/ INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG,// FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
output reg CCR_Enable				
);


reg [32:0] R33; //33-bit register "CHEATING METHOD" used for determining the CARRY_FLAG

always @(ALU_Op,RA,RB,RZ,Clock)
	begin
	
		casex(ALU_Op)
			0,42,64,65: begin/*NOP*/
					RZ <= 0; // Assign Null Value to RZ_In  but do not enable RZ....
					
			  			// Don't enable CCR
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
				end // END No Operation

			1,15,34,44: begin/*ADD*/  //Adding is the same as Load Base With Index from the ALU's Prospective
					{CARRY_FLAG,RZ} <= RA + RB; // Addition //33-bit register "CHEATING METHOD" used for determining the CARRY_FLAG // CARRY_FLAG <= (( RA | RB ) == 2^32-1 ) && ( RA&RB != 0 ) ;//if RA+RB > 32 Bits
					if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0))begin
						OVERFLOW_FLAG <= 1 ;
					end
					else begin
						OVERFLOW_FLAG <= 0 ;
					end
					
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
					 end //END ADD

				2,35,39,40,41: begin/*SUB*/
						RZ <= RA - RB ; // Subtraction
						
						if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0))begin
							OVERFLOW_FLAG <= 1 ;
						end
						else begin
							OVERFLOW_FLAG <= 2 ;
						end
						//CARRY_FLAG <= 1  if RA-RB > 32 Bits
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
					
				3,36: begin/*AnD*/
							RZ <= RA & RB ; // Bitwise AnD
				
					/*_____________________(AnD)________________________// Bitwise AnD "camel_backed" to keep seperate from ADDITION
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
				
				4,37: begin/*OR*/
							RZ <= RA | RB ; // Bitwise OR
				
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
				
				5: begin/*NEG*/
							RZ <= - RA ; // Negation 
	
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
					
				6,38: begin/*XOR*/
							RZ <= RA ^ RB ; //Exclusive OR
					
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

				7: begin/*COMP*/
							RZ <= ~ RA ; // One's Complement
							
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
				
				8: begin/*LSR*/
							RZ <= RA >> 1 ; // Divide By Two
							
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
					
				9: begin/*ASR*/
							RZ <= RA >>> 1 ; // Divide By Two
							CARRY_FLAG <= RA[0] ;
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
					
				10: begin/*LSL_ASL*/
							RZ <= RA << 1 ; // Divide By Two
							CARRY_FLAG <= RA[31] ;
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
					
				11: begin/*ROR*/
							RZ <= {CARRY_FLAG,RA[31:1]} ; // Rotate Right With Carry
							CARRY_FLAG <= RA[0] ;
					/*_____________________(ROR)________________________
					(ROR)DESCRIPTION:
						(1.) Rotate Right With Carry  // By One Bit Position
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

				12: begin/*ROL*/
							RZ <= {RA[30:0],CARRY_FLAG} ; // Rotate Right With Carry
							CARRY_FLAG <= RA[31] ;
					/*_____________________(ROL)________________________
					(ROL)DESCRIPTION:
						(1.) Rotate Left With Carry  // By One Bit Position
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
					
				13: begin/*MOVE*/
							RZ <= RA ; // Pass RA through moving it to memory

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
					
				14: begin/*LDRI*/
							RZ <= RB ; // Pass RB through moving it to memory
					
					/*_____________________(LDRI)________________________
					(LDRI)DESCRIPTION:
						(1.) Load Register Indirect
					____________________________________________________	
					(LDRI)RTL EQUIVELENT:
						(1.) RZ<-(RB) // EA=[RB]
						//!!!!!!!// Have To Fetch From Memory
						//???????// AGAIN DO WE NEED AN "IS ADDRESS" CONTROL SIGNAL IN THE CCR
					____________________________________________________
					FLAGS TO UPDATE FOR THIS OPPERATION:
						(1.) NONE
					____________________________________________________*/		
					end
					
					
					
				32,33,43,45: begin // Load Immediate Is the Same As a Load Unsigned Immediate From The ALU's Prospective
						RZ<=RB;//Load Immediate Oprand From MUXC_Out=RB... to Rdst
					 
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
					end //END LDU
					
					


			default: begin//NOP
						RZ<=0; // Assign Null Value to RZ_In  but do not enable RZ....
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
						end
		endcase

	//Always Update the ZERO_FLAG and NEGATIVE_FLAG
	//Don't change flags if it is a NOP //Instruction[5:0]!=6'b111111;
	if(~NOP_FLAG)begin
		
		if(RZ==0)begin
			ZERO_FLAG <= 1;//(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
		end
		else begin
			ZERO_FLAG <= 0;//(2.) ZERO_FLAG // Continuously Assigned Using An Internal Register
		end
		
		NEGATIVE_FLAG <= RZ[31];//(3.) NEGATIVE_FLAG
		
		CCR_Enable <= 1;
		
	end// END IF Condition Control Flags
	else if(NOP_FLAG)begin
		CCR_Enable <= 0;
	end
	
	end //END ALWAYS



// Assigning Flags - Hooking to Condition Control Register
	//CCR 32-Bit Format [...NOP, IFNR, INR , N, Z, V, C]
	//CCR [... No Operation, Instruction Format Not Recognized, Instruction Not Recognized, Negative, Zero, Overflow, Carry]
//assign CCR[0]=CARRY_FLAG;
//assign CCR[1]=NEGATIVE_FLAG;
//assign CCR[2]=OVERFLOW_FLAG;
//assign CCR[3]=ZERO_FLAG;
//assign CCR[4]=INR_FLAG;
//assign CCR[5]=IFNR_FLAG;
//assign CCR[6]=NOP_FLAG;
//assign CCR[31:7]=0; // May Add More Flags/ Control Signals Later




endmodule //END MODULE