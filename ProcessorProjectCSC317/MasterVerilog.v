// Credit Nathan Genetzky
//
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module MasterVerilog(
	input clk_27, clk_50,
	input [17:0] switch,
	output [8:0] green,
	output [17:0] red,
	input [3:0] pushBut,
	output [6:0] Hex0,Hex1,Hex2,Hex3,Hex4,Hex5,Hex6,Hex7
);

wire clk; //Clock is connected to a Push Button
PushButton_Debouncer debounceit(.clock27MHz(clk_27),.PB(pushBut[3]),.PB_state(clk));


		///		///
	///		///			START		LED Output
///		///
assign red[15:0] = 0;
assign red[16] = 0;
assign red[17] = 0;
assign green[6:0] = 0;
assign green[7] = 0;
assign green[8]=0; 	
		///		///
	///		///			FINISH		LED Output
///		///	

///		The Processor.
// Just an example of creating a module
/*
Processor uProcessor(
   .ExternalData(),
   .ProcessorReset(), 	// Resets the processor to initial state
	.ProcessorEnable(), 	// Run switch 
	.Clock(), 
	.OperationFinished(),
	.TimeStep(),
	.SelectHexView(),
   .HexDisplay(HexDisplay32Bits)
		//OUT: Show binary value as 8 digits of HEX on HEX0-Hex7
);
*/

		///		///
	///		///			START		Memory
///		///

ROM uROM(
	.address(), // From MuxMA
	.clken(),	// MEM_Read
	.clock(),	// Clock
	.q()			// To IR
	); 		
		///		///
	///		///			FINISH	Memory
///		///


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


		///		///
	///		///			START		HEX display
///		///	

Display displayAll (.RA(16'haaaa),.RB(16'hbbbb),.RZ(16'h2626),.RM(16'h1313),.RY(16'h2525),.reg_select(switch),.peekInRegister(pushBut[0]),.clk(clk),.Hex0(Hex0),.Hex1(Hex1),.Hex2(Hex2),.Hex3(Hex3),.Hex4(Hex4),.Hex5(Hex5),.Hex6(Hex6),.Hex7(Hex7));

////	Output to HEX display, Hex Displays 0-7
//// If hexCurrentDisplay is changed then HEX7...3,2,1,0 show (31:28)...(15:12),(11:8),(7:4),(3:0) respectively
//reg [31:0] HexDisplay32Bits;
//
////DisplayMux debugger (.select(switch),.enable(pushBut[0]),.clock(clk),.hexDisplay(HexDisplay32Bits),.RF_a(4'ha),.RF_b(4'hb),.RF_c(4'hc),.PC(4'hd),.IR(4'he),.RA(1),.RB(2),.RZ(3),.RM(4),.RY(5));
//	
////Registers to latch value to be displayed on hex
//reg [3:0] displayAtHex0,displayAtHex1,displayAtHex2,displayAtHex3,displayAtHex4,displayAtHex5,displayAtHex6,displayAtHex7; 
//
////Display HexDisplay32Bits to SevenSegmentDisplayDecoder module via displayAtHex0-7
//always @(HexDisplay32Bits)
//	begin
//		displayAtHex0 = HexDisplay32Bits[3:0];
//		displayAtHex1 = HexDisplay32Bits[7:4];
//		displayAtHex2 = HexDisplay32Bits[11:8];
//		displayAtHex3 = HexDisplay32Bits[15:12];
//		displayAtHex4 = HexDisplay32Bits[19:16];
//		displayAtHex5 = HexDisplay32Bits[23:20];
//		displayAtHex6 = HexDisplay32Bits[27:24];
//		displayAtHex7 = HexDisplay32Bits[31:28];
//	end
//SevenSegmentDisplayDecoder uHEX0	(.ssOut_L(Hex0[6:0]), .nIn(displayAtHex0[3:0]));
//SevenSegmentDisplayDecoder uHEX1	(.ssOut_L(Hex1[6:0]), .nIn(displayAtHex1[3:0]));
//SevenSegmentDisplayDecoder uHEX2	(.ssOut_L(Hex2[6:0]), .nIn(displayAtHex2[3:0]));
//SevenSegmentDisplayDecoder uHEX3	(.ssOut_L(Hex3[6:0]), .nIn(displayAtHex3[3:0]));
//SevenSegmentDisplayDecoder uHEX4	(.ssOut_L(Hex4[6:0]), .nIn(displayAtHex4[3:0]));
//SevenSegmentDisplayDecoder uHEX5	(.ssOut_L(Hex5[6:0]), .nIn(displayAtHex5[3:0]));
//SevenSegmentDisplayDecoder uHEX6	(.ssOut_L(Hex6[6:0]), .nIn(displayAtHex6[3:0]));
//SevenSegmentDisplayDecoder uHEX7	(.ssOut_L(Hex7[6:0]), .nIn(displayAtHex7[3:0]));
//			///		///
//	///		///			FINISH	 	HEX display
/////		///
endmodule //end MAIN


