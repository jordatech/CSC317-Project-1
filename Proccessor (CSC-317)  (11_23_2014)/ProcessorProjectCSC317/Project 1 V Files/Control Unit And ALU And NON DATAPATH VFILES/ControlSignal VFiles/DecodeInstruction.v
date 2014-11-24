//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/25/2014
//Decode Instruction Format
module DecodeInstruction(
	input wire [31:0] Instruction,
	output reg IFNR_FLAG,NOP_FLAG,
	output reg [1:0] Instruction_Format,
	// INSTRUCTION FORMATS:
	// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
		//Instruction_Format = 'd0;
	// Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
		//Instruction_Format = 'd1;
	// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
		//Instruction_Format = 'd2;
	output reg [4:0] Instruction_Rsrc1, Instruction_Rsrc2, Instruction_Rdst,
	output reg [31:0] Instruction_OP_Code,Instruction_Immediate // The largest that the OP_Code and Instruction_Immediate could be is 32 bits.... We can crop off bits later, depending upon the instruction format...

	);


always@(*)begin

	if(Instruction[5:0]==6'b111111)begin// No Operation = 111111
		NOP_FLAG=1;
	end
	else if(Instruction[5:0]!=6'b111111)begin
		NOP_FLAG=0;
	end

	// Determine Instruction_Format
	case(Instruction[5:0])
		6'b000000: Instruction_Format <= 0; // Instruction Format (a) 
		6'b100010,6'b100011: Instruction_Format <= 1; // Instruction Format (b)
		//: Instruction_Format = 2; // Instruction Format (c)
		
		default: Instruction_Format <= 2; // Assume Instruction Format (c) by default
	endcase// END case(Instruction[5:0])// END Determine Instruction_Format
	
	// Parse The Instruction Into Source And Destination Registers
	case(Instruction_Format)
		0: begin// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
			Instruction_Rsrc1 <= Instruction[31:27];
			Instruction_Rsrc2 <= Instruction[26:22];
			Instruction_Rdst <= Instruction[21:17];
			Instruction_Immediate <= 0; // Not In This Format
			Instruction_OP_Code <= Instruction[16:0];
			IFNR_FLAG <= 32'b0;
			end
			
		1: begin// Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
			Instruction_Rsrc1 <= Instruction[31:27];
			Instruction_Rsrc2 <= 5'b0;// Not In This Format
			Instruction_Rdst <= Instruction[26:22];
			Instruction_Immediate <= Instruction[21:6];
			Instruction_OP_Code <= Instruction[5:0];
			IFNR_FLAG <= 0;
			end
			
		2: begin// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
			Instruction_Rsrc1 <= 5'b0;// Not In This Format
			Instruction_Rsrc2 <= 5'b0;// Not In This Format
			Instruction_Rdst <= 5'b0;// Not In This Format
			Instruction_Immediate <= Instruction[31:6];
			Instruction_OP_Code <= Instruction[5:0];
			IFNR_FLAG <= 0;
			end
			
		default: begin// Write All Zeros
			Instruction_Rsrc1 <= 5'b0;
			Instruction_Rsrc2 <= 5'b0;
			Instruction_Rdst <= 5'b0;
			Instruction_Immediate <= 32'b0;
			Instruction_OP_Code <= 32'b0;
			IFNR_FLAG <= 1; // Instruction Format Not Recognized // Set All To Zero
			end
	endcase// END case(Instruction) // END Parse The Instruction
end


endmodule