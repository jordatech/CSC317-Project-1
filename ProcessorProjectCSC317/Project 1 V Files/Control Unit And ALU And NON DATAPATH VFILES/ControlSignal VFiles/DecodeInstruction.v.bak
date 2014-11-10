//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/25/2014
//Decode Instruction Format
module DecodeInstruction(
	input wire [31:0] Instruction,
	output reg IFNR_FLAG,
	output reg [1:0] InstructionFormat,
			// INSTRUCTION FORMATS:
	// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
		//InstructionFormat = 'd0;
	// Instruction Format (b) (RSRC1[31:27])(RSRC2[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
		//InstructionFormat = 'd1;
	// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
		//InstructionFormat = 'd2;
	output reg [4:0] Rsrc1, Rsrc2, Rdst,
	output reg [31:0] OP_Code, IMMEDIATE_OPPERAND // The largest that the OP_Code and IMMEDIATE_OPPERAND could be is 32 bits.... We will crop off bits later, depending upon the instruction format...

	);

	



always@(Instruction)begin
	
	// Determine InstructionFormat
	InstructionFormat = 0; // Instruction Format (0,1,2)  =  (a,b,c)
	
	// Parse The Instruction Into Source And Destination Registers
	case(InstructionFormat)
		0: begin// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
			Rsrc1 = Instruction[31:27];
			Rsrc2 = Instruction[26:22];
			Rdst = Instruction[21:17];
			OP_Code = Instruction[16:0];
			IFNR_FLAG=0;
			end
			
		1: begin// Instruction Format (b) (RSRC1[31:27])(RSRC2[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
			Rsrc1 = Instruction[31:27];
			Rsrc2 = Instruction[26:22];
			IMMEDIATE_OPPERAND = Instruction[21:6];
			OP_Code = Instruction[5:0];
			IFNR_FLAG=0;
			end
			
		2: begin// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
			IMMEDIATE_OPPERAND = Instruction[31:6];
			OP_Code = Instruction[5:0];
			IFNR_FLAG=0;
			end
			
		default: begin// Write All Zeros
			Rsrc1 = 5'b0;
			Rsrc2 = 5'b0;
			Rdst = 5'b0;
			IMMEDIATE_OPPERAND = 32'b0;
			OP_Code = 32'b0;
			IFNR_FLAG=1; // Instruction Format Not Recognized
			end
			
	endcase
end


endmodule