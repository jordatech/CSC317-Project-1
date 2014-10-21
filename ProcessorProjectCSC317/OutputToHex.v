// Credit Nathan Genetzky
//
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module OutputToHex(
input [10:0] select ,
output reg[31:0] hexDisplay,

//Input to Mux:
//Addresses
input [5:0] RF_a, RF_b, RF_c,
//Data
input [31:0] RA //...
);
	wire [31:0] AddressRF;
		assign AddressRF[31:24] = {2'b00,RF_a};
		assign AddressRF[23:16] = {2'b00,RF_b};
		assign AddressRF[15:8] = 8'h00;
		assign AddressRF[7:0] = {2'b00,RF_c};
		
	always @(*)
		begin
			case(select)
				10'd0:	hexDisplay = AddressRF;
				10'd1:	hexDisplay = RA;
				
				default: hexDisplay = 32'hF0F0;
			endcase
		end
endmodule
