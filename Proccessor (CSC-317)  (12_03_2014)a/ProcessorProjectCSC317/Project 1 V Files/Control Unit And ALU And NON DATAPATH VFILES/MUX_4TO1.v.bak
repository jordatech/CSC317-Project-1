// Mux N TO 1
// Written By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 10/28/2014
//Muxn Mux_NAME #(.WidthOfInputs(WidthOfInputs),.NumberOfInputs(NumberOfInputs))(.Select(Select),.Out(Out),.In_0(In_0),.In_1(In_1),.In_2(In_2),.In_3(In_3),.In_4(In_4),.In_5(In_5),.In_6(In_6),.In_7(In_7));
//Muxn Mux_NAME #(.WidthOfInputs(WidthOfInputs),.NumberOfInputs(NumberOfInputs))(.Select(Select),.Out(Out),.ConcatanatedInputs(ConcatanatedInputs))
module Muxn #(	
	parameter WidthOfInputs, NumberOfInputs
)
(
	input wire [NumberOfInputs*WidthOfInputs - 1 : 0] ConcatanatedInputs,//In_0, In_1, In_2, In_3, In_4, In_5, In_6, In_7,
	input wire [NumberOfInputs - 1 : 0]Select,
	output wire [WidthOfInputs - 1 : 0] Out
);

assign Out = ConcatanatedInputs >> ( Select * WidthOfInputs ) ; // Logical Shift Right To Look at the Desired input


endmodule


// SOURCE : http://forums.xilinx.com/t5/New-Users-Forum/Fully-Parameterized-Multiplexers/td-p/309117
//module mux
//#(
//  parameter
//   WIDTH = 8, // Min 1
//   NUM_INPUTS  = 16 // Min 2
//)
//(
////  input wire [ NUM_INPUTS - 1 : 0 ] [ WIDTH - 1 : 0 ] a_i, // SystemVerilog 
//  input wire [ NUM_INPUTS * WIDTH - 1 : 0 ] a_i,
//  input wire [ clogb2( NUM_INPUTS ) - 1 : 0 ] select_i,
//  output wire [ WIDTH -1 : 0 ] y_o
//);
//
//  assign y _o = a_i >> ( select_i * WIDTH );
//endmodule