//Display Debugger Mux
//Team #5
//Nathan Genetzky
//Jordan D. Ulmer - jordatech@gmail.com
//(10-13-2014)
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/24/2014


// EXAMPLE INSTANTIATION (10-24-2014)
//DisplayMux displayAll(
//	//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//		.Display_Select(Display_Select[4:0]),
//		.Display_Enable(Display_Enable),
//		.PC(16'h0101),
//		.IR(16'hFFFF),
//		.RA(16'haaaa),
//		.RB(16'hbbbb),
//		.RZ(16'h2626),
//		.RM(16'h1313),
//		.RY(16'h2525),
//		.RF_a(5'h1),
//		.RF_b(5'h2),
//		.RF_c(5'h3),
//	//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//		.HexDisplay32Bits(HexDisplay)
//	);


module DisplayMux(//Display_Select,Display_Enable,PC, IR, RA, RB, RZ, RM, RY,HexDisplay32Bits);
//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
input wire[4:0] Display_Select,
input wire Display_Enable,
	//Input to Mux:
		//Register File
			input wire[4:0] RF_a, RF_b, RF_c, 
		//Main Processor Datapath
			input wire[31:0] PC, IR, RA, RB, RZ, RM, RY,
			//input [?:0] ReturnAddress,
	//Processor-memory interface and IR control signals
		//input [?:0] ALU_OP, 
	//Main Processor Datapath Control Signals
		//input [?:0] C_Display_Select, B_Display_Select, Y_Display_Select //(WARNING) I DO NOT KNOW THE SIZE OF THESE Display_Select Lines
		//input [?:0] ConditionCodes,//(WARNING) I DO NOT KNOW THE SIZE OF THE ConditionCodes
		//input [?:0] Sign_Extend_ALU_B_Imediate,
	//Program Counter
		//input [?:0] PC, PC_Display_Select, PC_Enable, BranchOffset_Display_Select
	//Memory
		//input [?:0] MEM_Read, MEM_Write, MFC, MEM_Address_Display_Select_RZ_OR_PC
	//Instruction Register
		//input [?:0] IR_Enable,
	//Data
		//Peripheral Form Of Input
			//input [?:0] UserInput,		
		//Program Counter
			//input [?:0] PC, PC_Temp,
		//Instruction Register
			//input [?:0] IR,
//END INPUT DATA---------------------------------------------------------------------------------------------------------------------

//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	output reg[31:0] HexDisplay32Bits
//END OUTPUT DATA---------------------------------------------------------------------------------------------------------------------
);

// Map RF_a to HEX 6&7, Map RF_b to HEX 4&5, Map RF_c to HEX 0&1
wire [31:0] AddressRF;
											//{2'b0,RF_a} Because Addresses are 5 Bits and Display is 4Bits Per Hex 
		assign AddressRF[31:24] = {2'b0,RF_a};//Address (a) In The Register File INPUT DATA To Processor
		assign AddressRF[23:16] = {2'b0,RF_b};//Address (b) In The Register File INPUT DATA To Processor
		assign AddressRF[15:8] = 8'h00;
		assign AddressRF[7:0] = {2'b0,RF_c};//Address (c) In The Register File OUTPUT DATA From Processor


always @(Display_Enable)//Look at the Display_Selected contents when Display_Enable is pressed
	begin
	//pushbuttons are active low but this is the only way I'll know that it was the clock which triggered this statement
		if	(Display_Enable) ///Do Not Automatically Drive The Display
			begin
				HexDisplay32Bits<=16'h0FF0; //OFF
			end
		
		else if(~Display_Enable)//pushbuttons are active low, display when pushed down...
		begin
			case(Display_Select)
				0:	HexDisplay32Bits = PC;//Program Counter, Auto Increments Prior To The (Fetch) Stage 
				1:	HexDisplay32Bits = IR;//Instruction Register Written To After The (Fetch) Stage 
				2:	HexDisplay32Bits = RA;//RA = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
				3:	HexDisplay32Bits = RB;//RB = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
				4:	HexDisplay32Bits = RZ;//RZ = Written To After The (Compute) Stage 
				5:	HexDisplay32Bits = RM;//RM = Written To After The (Compute) Stage And Is Used In The Memory Access Stage 
				6:	HexDisplay32Bits = RY;//RY = Written To After The (Memory Access) Stage 
				7:	HexDisplay32Bits = AddressRF;//Display Register File Adresses
				default: HexDisplay32Bits = 16'hDEDE;//"Display Error"
			endcase
		end
	end
	

endmodule