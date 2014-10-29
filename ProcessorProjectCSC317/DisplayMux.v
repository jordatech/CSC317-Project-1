//Display Debugger Mux
//Team #5
//Nathan Genetzky
//Jordan D. Ulmer - jordatech@gmail.com
//(10-13-2014)
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/28/2014


// EXAMPLE INSTANTIATION (10-28-2014)
////Display Unit For Debugging And Validation
//DisplayMux displayAll(
//	//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//		.Display_Select(Display_Select[4:0]),
//		.Display_Enable(Display_Enable),
//		.PC(PC[31:0]),
//		.PC_Temp(PC_Temp),
//		.IR(16'hFFFF),
//		.RA(RA_Out[31:0]),
//		.RB(RB_Out[31:0]),
//		.RZ(RZ_Out[31:0]),
//		.RM(RM_Out[31:0]),
//		.RY(RY_Out[31:0]),
//		.RF_a(RF_a),
//		.RF_b(RF_b),
//		.RF_c(RF_c),
//		.BranchOffset(BranchOffset[31:0]),
//		.ROM_Out(ROM_Out[31:0]),
//		.PC_Select(PC_Select),
//		.PC_Enable(PC_Enable),
//		.INC_Select(INC_Select),
//		.CCR_Out(CCR_Out),
//		.OP_Code(OP_Code),
//		.IMMEDIATE_OPPERAND(IMMEDIATE_OPPERAND),
//		.ClockCount(ClockCount),
//
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
			input wire [2:0]ClockCount,
			//input [?:0] ReturnAddress,
	//[Decode]
		input wire [1:0] InstructionFormat,
	//Processor-memory interface and IR control signals
		//input [?:0] ALU_OP,
		input wire [31:0] OP_Code, IMMEDIATE_OPPERAND,
	//Condition Control Register
		input wire [31:0] CCR_Out,
	//Main Processor Datapath Control Signals
		//input [?:0] C_Display_Select, B_Display_Select, Y_Display_Select //(WARNING) I DO NOT KNOW THE SIZE OF THESE Display_Select Lines
		//input [?:0] ConditionCodes,//(WARNING) I DO NOT KNOW THE SIZE OF THE ConditionCodes
		//input [?:0] Sign_Extend_ALU_B_Imediate,
	//Program Counter
		//input [?:0] PC, PC_Display_Select, PC_Enable, BranchOffset_Display_Select
		input wire PC_Select, PC_Enable, INC_Select,
		input wire[31:0] PC_Temp, BranchOffset,
	//Memory
		//input [?:0] MEM_Read, MEM_Write, MFC, MEM_Address_Display_Select_RZ_OR_PC
	//Instruction Register
		//input [?:0] IR_Enable,
	//Data
		//Peripheral Form Of Input
			//input [?:0] UserInput,		
		//Instruction Register
			//input [?:0] IR,
		//Read Only Memory
			input wire [31:0] ROM_Out,

//END INPUT DATA---------------------------------------------------------------------------------------------------------------------

//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	output reg[31:0] HexDisplay32Bits
//END OUTPUT DATA---------------------------------------------------------------------------------------------------------------------
);

// Map RF_a to HEX 6&7, Map RF_b to HEX 4&5, Map RF_c to HEX 0&1
wire [31:0] AddressRF;
											//{2'b0,RF_a} Because Addresses are 5 Bits and Display is 4Bits Per Hex 
		assign AddressRF[31:24] = {2'b0,RF_a[4:0]};//Address (a) In The Register File INPUT DATA To Processor
		assign AddressRF[23:16] = {2'b0,RF_b[4:0]};//Address (b) In The Register File INPUT DATA To Processor
		assign AddressRF[15:8] = 8'h00;
		assign AddressRF[7:0] = {2'b0,RF_c[4:0]};//Address (c) In The Register File OUTPUT DATA From Processor


always @(Display_Enable)//Look at the Display_Selected contents when Display_Enable is pressed
	begin
	//pushbuttons are active low but this is the only way I'll know that it was the clock which triggered this statement
		if	(~Display_Enable) ///Do Not Automatically Drive The Display
			begin
				HexDisplay32Bits<=16'h0FF0; //OFF
			end
		
		else if(Display_Enable)//pushbuttons are active low, display when pushed down...
		begin
			case(Display_Select)
				0:	HexDisplay32Bits = PC[31:0];//Program Counter, Auto Increments Prior To The (Fetch) Stage 
				1:	HexDisplay32Bits = IR;//Instruction Register Written To After The (Fetch) Stage 
				2:	HexDisplay32Bits = RA[31:0];//RA = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
				3:	HexDisplay32Bits = RB[31:0];//RB = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
				4:	HexDisplay32Bits = RZ[31:0];//RZ = Written To After The (Compute) Stage 
				5:	HexDisplay32Bits = RM[31:0];//RM = Written To After The (Compute) Stage And Is Used In The Memory Access Stage 
				6:	HexDisplay32Bits = RY[31:0];//RY = Written To After The (Memory Access) Stage 
				7:	HexDisplay32Bits = AddressRF[31:0];//Display Register File Adresses
				8:	HexDisplay32Bits = ROM_Out[31:0];//ROM Output ...
				9: HexDisplay32Bits = PC_Temp[31:0];// PC-1 or PC-BranchOffset or PC-RA // One Cycle Behind...
				10: HexDisplay32Bits = BranchOffset[31:0]; // Branch Offset
				11: HexDisplay32Bits = PC_Select;// Increment PC "0"->jump to "RA" .... "1"->inc by MuxINC  // MuxPC = PC_select ? NextAdd: RA
				12: HexDisplay32Bits = PC_Enable;// Enable Program Counter
				13: HexDisplay32Bits = INC_Select;// Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
				14: HexDisplay32Bits = CCR_Out[31:0];// Condition Control Register
				15: HexDisplay32Bits = OP_Code[31:0];// Operation (ie: add, subtract...)
				16: HexDisplay32Bits = IMMEDIATE_OPPERAND[31:0];// Immediate Value Muxed into ALU or other
				17: HexDisplay32Bits = ClockCount[2:0];// Clocks since last instruction 0,1,2,3,4,0,1... RESETS AFTER 5
				18: HexDisplay32Bits = InstructionFormat[1:0];// Determined in Decode Stage (a,b,c)=(0,1,2)
				
				default: HexDisplay32Bits = 16'hDEDE;//"Display Error"
			endcase
		end
	end
	

endmodule