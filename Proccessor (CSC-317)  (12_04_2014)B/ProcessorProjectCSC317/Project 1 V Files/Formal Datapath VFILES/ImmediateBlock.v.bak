//ImmediateBlock
//Written by: Drake Jeno
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//11/01/2014
	// Added INSTRUCTION FORMATS:
	// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
	// Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
	// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
	


module ImmediateBlock (IR, clk, Extend, ImmediateBlock_Out);
	input clk;
	input [1:0] Extend;
	input [31:0] IR;
	output reg [31:0] ImmediateBlock_Out;// To MUX_C and To MUX_INC


always@(Extend,IR)
	begin
		case(Extend)
			//In Instruction Format (a) We Do Not Look at ImmediateBlock_Out
			0: ImmediateBlock_Out[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend // Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
			1: ImmediateBlock_Out[31:0] <= {16'b0, IR[21:6]};			//zero Extend // Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
			2: ImmediateBlock_Out[31:0] <= {{6{IR[31]}}, IR[31:6]};	//sign Extend // Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
			3: ImmediateBlock_Out[31:0] <= {06'b0, IR[31:6]};			//zero Extend // Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
	default:	ImmediateBlock_Out[31:0] <= 32'b1; // All Ones To Help Indicate An Error
		endcase
	end

endmodule
	