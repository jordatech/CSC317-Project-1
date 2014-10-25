//Processor Main
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module Processor (
	input wire [31:0] Display_Select,
	input wire Display_Enable,
   input wire ProcessorReset, 	// Resets the processor to initial state
	input wire ProcessorEnable, 	// Run switch 
	input wire Clock,
	output wire OperationFinished,
	output wire [31:0] HexDisplay
);


assign OperationFinished=ProcessorEnable;// Just to make sure the processor is working...




//LOAD INSTRUCTION

//reg 
//InstructionAddressGenerator InstAddGen(.BranchOff(),.RA(),.PC_select(),.PC_enable(),.INC_select(),.Clock(),.PC_temp(),.PC());
//memory MEM(address, dataIn, dataOut, MFC);
//RegisterFile RegFile(.Rdst(),.Rsrc1(),.Rsrc2(),.RA(),.RB(),.RY(),.clk(),.RF_WRITE());


//DECODE PHASE







//
//reg_32b RA (.R(), .Enable(), .Clock(), .Q());
//reg_32b RB (.R(), .Enable(), .Clock(), .Q());
//reg_32b RZ (.R(), .Enable(), .Clock(), .Q());
//reg_32b RM (.R(), .Enable(), .Clock(), .Q());
//reg_32b RY (.R(), .Enable(), .Clock(), .Q());


DisplayMux displayAll(
	//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.Display_Select(Display_Select[4:0]),
		.Display_Enable(Display_Enable),
		.PC(16'h0101),
		.IR(16'hFFFF),
		.RA(16'haaaa),
		.RB(16'hbbbb),
		.RZ(16'h2626),
		.RM(16'h1313),
		.RY(16'h2525),
		.RF_a(5'h1),
		.RF_b(5'h2),
		.RF_c(5'h3),
	//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		.HexDisplay32Bits(HexDisplay)
	);


endmodule