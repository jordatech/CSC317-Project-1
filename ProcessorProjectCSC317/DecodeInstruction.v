//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/25/2014
//Decode Instruction Format
module DecodeInstruction(
	input wire [31:0] Instruction,
	input wire Extend,
	output reg IFNR_FLAG, NOP_FLAG,
	output reg [1:0] InstructionFormat,
			// INSTRUCTION FORMATS:
	// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
		//InstructionFormat = 'd0;
	// Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
		//InstructionFormat = 'd1;
	// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
		//InstructionFormat = 'd2;
	output reg [4:0] Rsrc1, Rsrc2, Rdst,
	output reg [31:0] OP_Code, IMMEDIATE_Decoded // The largest that the OP_Code and IMMEDIATE_OPPERAND could be is 32 bits.... We will crop off bits later, depending upon the instruction format...

	);


always@(Instruction)begin
	//Set A Flag For No Operation
	if(Instruction[5:0]==6'b111111)begin
		NOP_FLAG <=1;// No Operation
	end
	else begin
		NOP_FLAG <=0;
	end
	
	
	// Determine InstructionFormat
	case(Instruction[5:0])
		6'b000000: InstructionFormat <= 0; // Instruction Format (a) 
		6'b100010,6'b100011: InstructionFormat <= 1; // Instruction Format (b)
		//: InstructionFormat = 2; // Instruction Format (c)
		
		default: InstructionFormat <= 0; // Assume Instruction Format (a) by default
	endcase
	
	// Parse The Instruction Into Source And Destination Registers
	case(InstructionFormat)
		0: begin// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
			Rsrc1 <= Instruction[31:27];
			Rsrc2 <= Instruction[26:22];
			IMMEDIATE_Decoded <= 32'b0; // Not In This Format
			Rdst <= Instruction[21:17];
			OP_Code <= Instruction[16:0];
			IFNR_FLAG <= 0;
			end
			
		1: begin// Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
			Rsrc1 <= Instruction[31:27];
			Rsrc2 <= 5'b0;// Not In This Format
			if(Extend==1)begin
				IMMEDIATE_Decoded <= {16{Instruction[21]},Instruction[21:6]}; // Sign Extend
			end
			else begin
				IMMEDIATE_Decoded <= {16'b0,Instruction[21:6]}; // Zero Extend
			end
			Rdst <= Instruction[26:22];
			OP_Code <= Instruction[5:0];
			IFNR_FLAG <= 0;
			end
			
		2: begin// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
			Rsrc1 <= 5'b0;// Not In This Format
			Rsrc2 <= 5'b0;// Not In This Format
			if(Extend==1)begin
				IMMEDIATE_Decoded <= {6{Instruction[31]},Instruction[31:6]}; // Sign Extend
			end
			else begin
				IMMEDIATE_Decoded <= {6'b0,Instruction[31:6]}; // Zero Extend
			end
			Rdst <= 5'b0;// Not In This Format
			OP_Code <= Instruction[5:0];
			IFNR_FLAG <= 0;
			end
			
		default: begin// Write All Zeros
			Rsrc1 <= 5'b0;
			Rsrc2 <= 5'b0;
			IMMEDIATE_Decoded <= 32'b0;
			Rdst <= 5'b0;
			OP_Code <= 32'b0;
			IFNR_FLAG <= 1; // Instruction Format Not Recognized
			end
			
	endcase
end


endmodule