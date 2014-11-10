//ImmediateBlock
//Written by: Drake Jeno
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//11/01/2014
	// Added INSTRUCTION FORMATS:
	// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
		//InstructionFormat = 'd0;
	// Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
		//InstructionFormat = 'd1;
	// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
		//InstructionFormat = 'd2;		


module ImmediateBlock (InstructionFormat, IR, clk, Extend, ImmediateBlock_Out);
	input clk;
	input [1:0] InstructionFormat;
	input [1:0] Extend;
	input [31:0] IR;
	output reg [31:0] ImmediateBlock_Out;



always@(Extend)
begin
	if(InstructionFormat==0)// Instruction Format (a) (RSRC1[31:27])(RSRC2[26:22])(RDST[21:17])(OPCODE[16:0])
		0: ImmediateBlock_Out[31:0] <= 0;	// No Immediate Value In This Format
	end
	
	if(InstructionFormat==1)// Instruction Format (b) (RSRC1[31:27])(RDST[26:22])(IMMEDIATE_OPPERAND[21:6])(OPCODE[5:0])
		case(Extend)
			0: ImmediateBlock_Out[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend
			1: ImmediateBlock_Out[31:0] <= {16'b0, IR[21:6]};			//zero Extend
			default: ImmediateBlock_Out[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend by default
		endcase
	end
	
	if(InstructionFormat==2)// Instruction Format (c) (IMMEDIATE_VALUE[31:6])(OPCODE[5:0])
		case(Extend)
			0: ImmediateBlock_Out[31:0] <= {{6{IR[31]}}, IR[31:6]};	//sign Extend
			1: ImmediateBlock_Out[31:0] <= {16'b0, IR[31:6]};			//zero Extend
			default: ImmediateBlock_Out[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend by default
		endcase
	end
end

endmodule
	