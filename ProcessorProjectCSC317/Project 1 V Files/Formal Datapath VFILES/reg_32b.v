//N-bit register module
module reg_32b(R, Rin, Clock, Q);
	parameter n = 32;
	input [n-1:0] R;
	input Rin, Clock;
	output [n-1:0] Q;
	reg [n-1:0] Q;

	always	@(posedge Clock)
	if (Rin)
		Q <= R;

endmodule
