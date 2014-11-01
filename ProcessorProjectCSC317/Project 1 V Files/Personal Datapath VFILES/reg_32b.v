//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014
//General 32-bit register
module reg_32b(R, Enable, Clock, Q);
	parameter n = 32;
	input [n-1:0] R;
	input Enable, Clock;
	output [n-1:0] Q;
	reg [n-1:0] Q;

	always	@(posedge Clock)
	if (Enable)
		Q <= R;

endmodule
