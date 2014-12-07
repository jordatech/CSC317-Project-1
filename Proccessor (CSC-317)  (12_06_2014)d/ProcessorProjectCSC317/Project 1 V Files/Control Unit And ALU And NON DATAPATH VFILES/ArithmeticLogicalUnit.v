//ALU - Arithmatical Logical Unit
//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/21/2014
//Revision 10-28-2014

//ArithmeticLogicalUnit ALU1(.InstructionFormat(),.Clock(),.Instruction(),.RA(),.RB(),.RZ(),.INR_FLAG(),.ZERO_FLAG(),.OVERFLOW_FLAG(),.NEGATIVE_FLAG(),.CARRY_FLAG());

module ArithmeticLogicalUnit(
input wire [31:0] ALU_Op , RA, RB, CCR_Out, // Since RB Is Muxed In We May Use RBI = RB_IMMEDIATE To Specify An Imediate Value
input Clock,
output reg [31:0] RZ, // Out and Condition Control Register
								  //CCR 32-Bit Format [...NOP, IFNR, INR , N, Z, V, C]
								  //CCR [... No Operation, Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]
input wire NOP_FLAG,
output reg /*NOP_FLAG, INFR_FLAG*/ INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG// FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
				
);


reg [32:0] R33; //33-bit register "CHEATING METHOD" used for determining the CARRY_FLAG

always @(*)
	begin
	
		casex(ALU_Op)
			0,16,17,18,64,65: begin//NOP(0),JMP(16),JSR(17),RTS(18),BRA(64),BSR(65)
					RZ <= 0; // Assign Null Value to RZ_In  but do not enable RZ....
				end // END No Operation

			1,14,34,44,45: begin//ADD(1),LBI(14),ADD#(34),LDIX(44),STIX(45)
						{CARRY_FLAG,RZ} <= RA + RB; // Addition //33-bit register "CHEATING METHOD" used for determining the CARRY_FLAG // CARRY_FLAG <= (( RA | RB ) == 2^32-1 ) && ( RA&RB != 0 ) ;//if RA+RB > 32 Bits
						if((RA>0 && RB>0 && RZ<0)||(RA<0 && RB<0 && RZ>0))begin
							OVERFLOW_FLAG <= 1 ;
						end
						else begin
							OVERFLOW_FLAG <= 0 ;
						end
					
					 end //END ADD

				2,35,39,40,41: begin//SUB(2),SUB#(35),BEQ(39),BNE(40),BLT(41)
						RZ <= RA - RB ; // Subtraction
						if((RA>0 && RB<0 && RZ<0)||(RA<0 && RB>0 && RZ>0))begin
							OVERFLOW_FLAG <= 1 ;
						end
						else begin
							OVERFLOW_FLAG <= 0 ;
						end
					
					end //End Subtraction
					
				3,36: begin//AnD(3),AnD#(36)
							RZ <= RA & RB ; // Bitwise AnD
						end
				4,37: begin//OR(4),OR#(37)
							RZ <= RA | RB ; // Bitwise OR
						end
				5: begin//NEG(5)
							RZ <= - RA ; // Negation 
					end						
				6,38: begin//XOR(6),XOR#(38)
							RZ <= RA ^ RB ; //Exclusive OR
					end	
				7: begin//COMP(7)
							RZ <= ~ RA ; // One's Complement		
					end
				8: begin//LSR(8)
							RZ <= RA >> 1 ; // Divide By Two		
					end
				9: begin//ASR(9)
							RZ <= RA >>> 1 ; // Divide By Two
							CARRY_FLAG <= RA[0] ;
					end
				10: begin//LSL_ASL(10)
							RZ <= RA << 1 ; // Divide By Two
							CARRY_FLAG <= RA[31] ;
					/*LSL_ASL*/;  // LSL Is The Same As ASL , Back Fills With Zeros
					end								
				11: begin//ROR(11)
							RZ <= {CCR_Out[0],RA[31:1]} ; //{CARRY_FLAG,RA[31:1]} ; // Rotate Right With Carry
							CARRY_FLAG <= RA[0] ;
					end
				12: begin//ROL(12)
							RZ <= {RA[30:0],CCR_Out[0]} ; // {RA[30:0],CARRY_FLAG} ; // Rotate Right With Carry
							CARRY_FLAG <= RA[31] ;					
					end							
				13: begin//MOVE(13)
							RZ <= RA ; // Pass RA through moving it to memory
					end					
				15,32,33,42,43: begin//LRDI(15),LD#(32),LDU#(33),LDA(42),STA(43)
							RZ <= RB ; // Pass RB through moving it to memory
					end
			default: begin//NOP
						RZ<=0; // Assign Null Value to RZ_In 
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
		
		//CCR_Enable <= 1;
		
	end// END IF Condition Control Flags
	else if(NOP_FLAG)begin
		//CCR_Enable <= 0;
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