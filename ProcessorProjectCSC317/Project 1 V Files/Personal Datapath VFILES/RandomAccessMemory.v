// Written by: Drake Jeno
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/28/2014

// source:
// http://www.bawankule.com/verilogcenter/tip2.html
// This contribution came from a discussion on the comp.lang.verilog bulletin board which was
// initiated by Farhad Sunavala concerning RAM modelling 
// code based on Farhad Sunavala's original version

// MEM_Address 	= bit6 is enable(chip select), active low, bits[5-0] is memory MEM_Address
// MEM_In	= data from RM
// MEM_Out	= data from contents of memory to MUX-Y/RY
// Read_H_Write_L	= read write control signal, read(High / 1), write(Low / 0)
// MemoryFunctionComplete		= memory function complete flag

module RandomAccessMemory (MEM_Address, MEM_In, MEM_Out, Read_H_Write_L, MemoryFunctionComplete);

input	 wire Read_H_Write_L;						//read high, write low
		 
input  wire	[6:0]	 MEM_Address;		  	//0-63 + enable
input  wire [31:0] MEM_In;				//from RM
output tri	[31:0] MEM_Out;			//to MUX-Y/RY
output wire MemoryFunctionComplete;							//memory function complete flag

//Internal Components
reg 			[31:0] mem_bank [63:0];	//64 32bit registers
wire 			write;
	
	assign	enable = ~MEM_Address[6];
	assign	write = ~Read_H_Write_L;							//write if not read
	assign	MemoryFunctionComplete = 1;										//temp tied to 1

	// if enable, assign data out to memory contents, else assign high impedence
	assign MEM_Out = (enable) ? mem_bank[MEM_Address[5:0]] : 1'bz;

	always @(MEM_Address, MEM_In, write)
	if(enable)
	begin
		if(write)							//if enable, write to memory
			begin
					mem_bank[MEM_Address[5:0]]	= MEM_In;
			end
	end
endmodule