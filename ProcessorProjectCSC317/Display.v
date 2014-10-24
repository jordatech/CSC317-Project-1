module Display(RA,RB,RZ,RM,RY,reg_select,peekInRegister,clk,Hex0,Hex1,Hex2,Hex3,Hex4,Hex5,Hex6,Hex7);

input clk;
input [17:0] reg_select; //this should say input [3:0] reg_select; but when i do that it says that reg_select[4] & reg_select[5] fall outside vector size
input wire [31:0] RA,RB,RZ,RM,RY;

//	Output to HEX display, Hex Displays 0-7
// If hexCurrentDisplay is changed then HEX7...3,2,1,0 show (31:28)...(15:12),(11:8),(7:4),(3:0) respectively
reg [31:0] HexDisplay32Bits;
input peekInRegister;

//Peak In a register
always @(peekInRegister)//Look in PEAKINTHISREGISTER when peekInRegister is pressed
	begin
		//PEAKINTHISREGISTER <= data_in[2:0];
		if	(peekInRegister) //pushbuttons are active low but this is the only way I'll know that it was the clock which triggered this statement
			begin
				HexDisplay32Bits<=16'heeee;
			end
		else if(~peekInRegister)//pushbuttons are active low and I only want
		begin
			case(reg_select)
				0:HexDisplay32Bits = RA;
				1:HexDisplay32Bits = RB;
				2:HexDisplay32Bits = RZ;
				3:HexDisplay32Bits = RM;
				4:HexDisplay32Bits = RY;
				default: HexDisplay32Bits = 16'heeee;
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

output [6:0] Hex0,Hex1,Hex2,Hex3,Hex4,Hex5,Hex6,Hex7;
	
SevenSegmentDisplayDecoder uHEX0	(.ssOut_L(Hex0[6:0]), .nIn(displayAtHex0[3:0]));
SevenSegmentDisplayDecoder uHEX1	(.ssOut_L(Hex1[6:0]), .nIn(displayAtHex1[3:0]));
SevenSegmentDisplayDecoder uHEX2	(.ssOut_L(Hex2[6:0]), .nIn(displayAtHex2[3:0]));
SevenSegmentDisplayDecoder uHEX3	(.ssOut_L(Hex3[6:0]), .nIn(displayAtHex3[3:0]));
SevenSegmentDisplayDecoder uHEX4	(.ssOut_L(Hex4[6:0]), .nIn(displayAtHex4[3:0]));
SevenSegmentDisplayDecoder uHEX5	(.ssOut_L(Hex5[6:0]), .nIn(displayAtHex5[3:0]));
SevenSegmentDisplayDecoder uHEX6	(.ssOut_L(Hex6[6:0]), .nIn(displayAtHex6[3:0]));
SevenSegmentDisplayDecoder uHEX7	(.ssOut_L(Hex7[6:0]), .nIn(displayAtHex7[3:0]));

endmodule