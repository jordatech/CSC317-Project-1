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



//Prepare Internal Display
	wire [31:0] HexDisplay32Bits_Wire;
	reg [31:0] HexDisplay32Bits;
	
//Debounce The Clock and The Other Buttons
	wire [3:0]pushBut_DB; 
	PushButton_Debouncer debounceit0(.clock27MHz(clk_27),.PB(pushBut[0]),.PB_state(pushBut_DB[0]));
	PushButton_Debouncer debounceit1(.clock27MHz(clk_27),.PB(pushBut[1]),.PB_state(pushBut_DB[1]));
	PushButton_Debouncer debounceit2(.clock27MHz(clk_27),.PB(pushBut[2]),.PB_state(pushBut_DB[2]));
	PushButton_Debouncer debounceit3(.clock27MHz(clk_27),.PB(pushBut[3]),.PB_state(pushBut_DB[3]));

	

	
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/////// 			START		Memory
	// Memory Wires
		// Inputs
			wire[31:0] 	MEM_Address, MEM_Data_In; // WORD ADDRESSABLE
			wire 			MEM_Read, MEM_Write, MEM_Clock;
		// Outputs
			wire[31:0]  MEM_Data_Out;
			wire			MEM_MFC, MEM_ANA_FLAG; //Address Not Assigned FLAG
			
MemoryInterface MEMORY(
		//Memory
			// Inputs
				.MEM_Address(MEM_Address),
				.MEM_Data_In(MEM_Data_In), // WORD ADDRESSABLE
				.MEM_Read(MEM_Read),.MEM_Write(MEM_Write),.MEM_Clock(MEM_Clock),
			// Outputs
				.MEM_Data_Out(MEM_Data_Out),.MEM_MFC(MEM_MFC),.MEM_ANA_FLAG(MEM_ANA_FLAG)//Address Not Assigned
);

	assign MEM_Clock = clk_27;

/////// 			FINISH	Memory
//-----------------------------------------------------------------------------------------------------------------------



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/////// 			START		Processor

Processor aProcessor(
	.PC_Reset(pushBut_DB[3]),
	.Display_Select(switch[4:0]),
	.RegFileView_Select(switch[17:13]),
	.Display_Enable(pushBut_DB[1]),
	.Clock(pushBut_DB[0]),
	.HexDisplay(HexDisplay32Bits_Wire),
	.GreenLEDs(green[6:0]),//For Time Step
		//Memory
			// Inputs
				.MEM_Data_Out(MEM_Data_Out),.MEM_MFC(MEM_MFC),.MEM_ANA_FLAG(MEM_ANA_FLAG),//Address Not Assigned
			// Outputs
				.MEM_Address(MEM_Address),
				.MEM_Data_In(MEM_Data_In), // WORD ADDRESSABLE
				.MEM_Read(MEM_Read),.MEM_Write(MEM_Write)
);

/////// 			FINISH	Processor
//-----------------------------------------------------------------------------------------------------------------------



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/////// 			START		LED Output

assign red[15:0] = 0;
assign red[16] = 0;
assign red[17] = 0;
//assign green[6:0] = 0;
//assign green[7] = 0;
//assign green[8]=0; 
/////// 			FINISH		LED Output
//-----------------------------------------------------------------------------------------------------------------------



//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/////// 			START		HEX display
	
//	Output to HEX display, Hex Displays 0-7
// If hexCurrentDisplay is changed then HEX7...3,2,1,0 show (31:28)...(15:12),(11:8),(7:4),(3:0) respectively
//Registers to latch value to be displayed on hex
reg [3:0] displayAtHex0,displayAtHex1,displayAtHex2,displayAtHex3,displayAtHex4,displayAtHex5,displayAtHex6,displayAtHex7; 

// Latch in values from other modules
always@(HexDisplay32Bits_Wire)begin
	HexDisplay32Bits = HexDisplay32Bits_Wire;
end

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

/////// 			FINISH	 	HEX display
//-----------------------------------------------------------------------------------------------------------------------
endmodule //end MAIN


