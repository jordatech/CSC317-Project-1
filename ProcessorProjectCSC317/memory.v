// source:
// http://www.bawankule.com/verilogcenter/tip2.html
// This contribution came from a discussion on the comp.lang.verilog bulletin board which was
// initiated by Farhad Sunavala concerning RAM modelling 
// code based on Farhad Sunavala's original version
//
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014


module memory (address, dataIn, dataOut, MFC);
output	MFC;								//memory function complete flag
wire		enable;
input 		[6:0]	 address;		  	//0-63 + enable
input	 		[31:0] dataIn;				//from RM
output wire	[31:0] dataOut;			//to MUX-Y/RY
reg 			[31:0] mem_bank [0:63];	//64 32bit registers
	
	assign	enable = address[6];				//enable for write
	assign	MFC = 1;								//temp tied to 1
	assign 	dataOut = mem_bank[address[5:0]];	//to MUX-Y/RY

	always @(address, dataIn)
	if (enable)										//if enable, write to memory
		begin
				mem_bank[address[5:0]]	= dataIn;
		end
endmodule