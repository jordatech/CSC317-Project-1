//ImmediateBlock
//Written by: Drake Jeno
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/29/2014

module ImmediateBlock (IR, clk, Extend, ImmediateBlock_Out);
	input clk;
	input [1:0] Extend;
	input [31:0] IR;
	output reg [31:0] ImmediateBlock_Out;


always@(Extend)
	begin
		case(Extend)
			1: ImmediateBlock_Out[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend
			2: ImmediateBlock_Out[31:0] <= {16'b0, IR[21:6]};			//zero Extend
			default: ImmediateBlock_Out[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend by default
		endcase
	end


endmodule
	