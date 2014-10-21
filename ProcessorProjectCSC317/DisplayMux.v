//Display Debugger Mux
//Team #5
//Nathan Genetzky
//Jordan D. Ulmer
//(10-13-2014)
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module DisplayMux(
input [10:0] select ,
output reg[31:0] hexDisplay,
//Input to Mux:
	//Register File
	input [5:0] RF_a, RF_b, RF_c, 
	//Main Processor Datapath
	input [31:0] PC, IR, RA, RB, RZ, RM, RY

//input [?:0] ReturnAddress,
//Processor-memory interface and IR control signals
	//input [?:0] ALU_OP, 
//Main Processor Datapath Control Signals
	//input [?:0] C_Select, B_Select, Y_Select //(WARNING) I DO NOT KNOW THE SIZE OF THESE Select Lines
	//input [?:0] ConditionCodes,//(WARNING) I DO NOT KNOW THE SIZE OF THE ConditionCodes
	//input [?:0] Sign_Extend_ALU_B_Imediate,
//Program Counter
	//input [?:0] PC, PC_Select, PC_Enable, BranchOffset_Select
//Memory
	//input [?:0] MEM_Read, MEM_Write, MFC, MEM_Address_Select_RZ_OR_PC
//Instruction Register
	//input [?:0] IR_Enable,
//Data
	//Peripheral Form Of Input
		//input [?:0] UserInput,		
	//Program Counter
		//input [?:0] PC, PC_Temp,
	//Instruction Register
		//input [?:0] IR,
);

wire [31:0] AddressRF;
		assign AddressRF[31:24] = {2'b00,RF_a};//Address (a) In The Register File INPUT DATA To Processor
		assign AddressRF[23:16] = {2'b00,RF_b};//Address (b) In The Register File INPUT DATA To Processor
		assign AddressRF[15:8] = 8'h00;
		assign AddressRF[7:0] = {2'b00,RF_c};//Address (c) In The Register File OUTPUT DATA From Processor

	always @(*)
		begin 
			case(select)
						10'd0:	hexDisplay = AddressRF;//Register File
		
						10'd10:	hexDisplay = PC;//Program Counter, Auto Increments Prior To The (Fetch) Stage 
						10'd11:	hexDisplay = IR;//Instruction Register Written To After The (Fetch) Stage 
						10'd12:	hexDisplay = RA;//RA = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
						10'd13:	hexDisplay = RB;//RB = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
						10'd14:	hexDisplay = RZ;//RZ = Written To After The (Compute) Stage 
						10'd15:	hexDisplay = RM;//RM = Written To After The (Compute) Stage And Is Used In The Memory Access Stage 
						10'd16:	hexDisplay = RY;//RY = Written To After The (Memory Access) Stage 
						default: hexDisplay = 32'hF0F0;//(WARNING)Default Display 00
			endcase
		end
endmodule