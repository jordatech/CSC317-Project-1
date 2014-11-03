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
output reg /*NOP_FLAG, INFR_FLAG*/ INR_FLAG, ZERO_FLAG, OVERFLOW_FLAG, NEGATIVE_FLAG, CARRY_FLAG// FLAGS For Condition Control Regester, which are "hooked" to the CCR output wire
				
);

always @(Clock)
	begin
	
	RZ<=RA+RB+1;
	
//		casex(ALU_Op)
//		
//			deafault:
//			
//		endcase

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
		
	end// END IF Condition Control Flags

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