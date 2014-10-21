//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014
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
