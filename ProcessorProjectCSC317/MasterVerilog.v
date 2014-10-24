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
wire clk = pushBut[3]; //Clock is connected to a Push Button
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
		///		///
	///		///			START		HEX display
///		///	

reg [31:0] RA,RB,RZ,RM,RY;

//reg_32b iRA (data_in,switch[0],clk,RA);
//reg_32b iRB (data_in,switch[1],clk,RB);
//reg_32b iRZ (data_in,switch[2],clk,RZ);
//reg_32b iRM (data_in,switch[3],clk,RM);
//reg_32b iRY (data_in,switch[4],clk,RY);
//reg_32b iROM (data_in,switch[5],clk,ROM);

always
begin
RA = 8'h3fba;
end

//	Output to HEX display, Hex Displays 0-7
// If hexCurrentDisplay is changed then HEX7...3,2,1,0 show (31:28)...(15:12),(11:8),(7:4),(3:0) respectively
reg [31:0] HexDisplay32Bits;

//Peak In a register
always @(pushBut[0])//Look in PEAKINTHISREGISTER when pushBut[0] is pressed
	begin
		//PEAKINTHISREGISTER <= data_in[2:0];
		if	(pushBut[0]) //pushbuttons are active low but this is the only way I'll know that it was the clock which triggered this statement
			begin
				HexDisplay32Bits<=0;
			end
		else if(~pushBut[0])//pushbuttons are active low and I only want
		begin
			case(switch)
				0:HexDisplay32Bits = RA;
				1:HexDisplay32Bits = RB;
				2:HexDisplay32Bits = RZ;
				3:HexDisplay32Bits = RM;
				4:HexDisplay32Bits = RY;
				default: HexDisplay32Bits = 0;
			endcase
		end
	end
	
//Registers to latch value to be displayed on hex
reg [3:0] displayAtHex0,displayAtHex1,displayAtHex2,displayAtHex3,displayAtHex4,displayAtHex5,displayAtHex6,displayAtHex7; 

//Display HexDisplay32Bits to SevenSegmentDisplayDecoder module via displayAtHex0-7
always @(HexDisplay32Bits)
	begin
		displayAtHex0 = HexDisplay32Bits[3:0];
		displayAtHex1 = HexDisplay32Bits[7:4];
		displayAtHex2 = HexDisplay32Bits[11:8];
		displayAtHex3 = HexDisplay32Bits[15:12];
		displayAtHex4 = HexDisplay32Bits[19:16];
		displayAtHex5 = HexDisplay32Bits[23:20];
		displayAtHex6 = HexDisplay32Bits[27:24];
		displayAtHex7 = HexDisplay32Bits[31:28];
	end
SevenSegmentDisplayDecoder uHEX0	(.ssOut_L(Hex0[6:0]), .nIn(displayAtHex0[3:0]));
SevenSegmentDisplayDecoder uHEX1	(.ssOut_L(Hex1[6:0]), .nIn(displayAtHex1[3:0]));
SevenSegmentDisplayDecoder uHEX2	(.ssOut_L(Hex2[6:0]), .nIn(displayAtHex2[3:0]));
SevenSegmentDisplayDecoder uHEX3	(.ssOut_L(Hex3[6:0]), .nIn(displayAtHex3[3:0]));
SevenSegmentDisplayDecoder uHEX4	(.ssOut_L(Hex4[6:0]), .nIn(displayAtHex4[3:0]));
SevenSegmentDisplayDecoder uHEX5	(.ssOut_L(Hex5[6:0]), .nIn(displayAtHex5[3:0]));
SevenSegmentDisplayDecoder uHEX6	(.ssOut_L(Hex6[6:0]), .nIn(displayAtHex6[3:0]));
SevenSegmentDisplayDecoder uHEX7	(.ssOut_L(Hex7[6:0]), .nIn(displayAtHex7[3:0]));
			///		///
	///		///			FINISH	 	HEX display
///		///
endmodule //end MAIN


