// source:
// http://www.bawankule.com/verilogcenter/tip2.html
// This contribution came from a discussion on the comp.lang.verilog bulletin board which was
// initiated by Farhad Sunavala concerning RAM modelling 
// code based on Farhad Sunavala's original version

// address 	= bit6 is enable(chip select), active low, bits[5-0] is memory address
// dataIn	= data from RM
// dataOut	= data from contents of memory to MUX-Y/RY
// read_w	= read write control signal, read(low / 0), write(high / 1)
// MFC		= memory function complete flag

module RAM (address, dataIn, dataOut, read_w, MFC);
output		MFC;							//memory function complete flag
input			read_w;						//read high, write low
wire			write;
input 		[6:0]	 address;		  	//0-63 + enable
input	 		[31:0] dataIn;				//from RM
output tri	[31:0] dataOut;			//to MUX-Y/RY
reg 			[31:0] mem_bank [0:63];	//64 32bit registers
	wire enable;
	assign	enable = ~address[6];
	assign	write = ~read_w;							//write if not read
	assign	MFC = 1;										//temp tied to 1

	// if enable, assign data out to memory contents, else assign high impedence
	assign dataOut = (enable) ? mem_bank[address[5:0]] : 32'bz;

	always @(address, dataIn, write, enable)
if(enable) //if enable, write to memory  // THIS WAS INCORRECT,(WITH THE OLD IMPLEMENTATION WE COULD ONLY WRITE WHEN WE WERE READING) AND SO IT WAS REMOVED
	begin
		if(write)							
			begin
					mem_bank[address[5:0]]	= dataIn;
			end
	end 
endmodule