// Mux N TO 1
// Written By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
// 10/28/2014
//Muxn Mux_NAME #(.WidthOfInputs(WidthOfInputs),.NumberOfInputs(NumberOfInputs))(.Select(Select),.Out(Out),.In_0(In_0),.In_1(In_1),.In_2(In_2),.In_3(In_3),.In_4(In_4),.In_5(In_5),.In_6(In_6),.In_7(In_7));
//Muxn Mux_NAME #(.WidthOfInputs(WidthOfInputs),.NumberOfInputs(NumberOfInputs))(.Select(Select),.Out(Out),.ConcatanatedInputs(ConcatanatedInputs))
module Mux4To1 #(	
	parameter WidthOfInputs, 
	parameter NumberOfInputs = 4
)
(
	input wire [WidthOfInputs - 1 : 0] 	In_0, In_1, In_2, In_3,
	input wire [NumberOfInputs - 1: 0]	Select,
	output reg [WidthOfInputs - 1 : 0] 	Out
);

//assign Out = //SELECT ? TRUE : FALSE; 
always@(*)begin
	case(Select)
		0: Out = In_0 ;
		1: Out = In_1 ;
		2: Out = In_2 ;
		3: Out = In_3 ;
		default: Out = In_0 ;
	endcase
end

endmodule