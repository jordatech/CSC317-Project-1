//Display Debugger Mux
//Team #5
//Nathan Genetzky
//Jordan D. Ulmer
//(10-13-2014)
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module DisplayMux(
input wire[10:0] select ,
input wire enable, clock,
//Input to Mux:
	//Register File
	input wire[4:0] RF_a, RF_b, RF_c, 
	//Main Processor Datapath
	input wire[31:0] PC, IR, RA, RB, RZ, RM, RY,
	
output wire[31:0] hexDisplay
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

reg [31:0] hexDisplayRegReg;

//wire [31:0] AddressRF;
//		assign AddressRF[31:27] = RF_a;//Address (a) In The Register File INPUT DATA To Processor
//		assign AddressRF[26:22] = RF_b;//Address (b) In The Register File INPUT DATA To Processor
//		assign AddressRF[21:17] = RF_c;//Address (c) In The Register File OUTPUT DATA From Processor
//		assign AddressRF[16:0] = 17'h00;

	always @(clock)
		begin 
			if (!enable) // Drive The Display
				case(select)
							//'d0:	hexDisplayReg = AddressRF;//Register File
			
							'd10:	hexDisplayReg = PC;//Program Counter, Auto Increments Prior To The (Fetch) Stage 
							'd11:	hexDisplayReg = IR;//Instruction Register Written To After The (Fetch) Stage 
							'd12:	hexDisplayReg = RA;//RA = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
							'd13:	hexDisplayReg = RB;//RB = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
							'd14:	hexDisplayReg = RZ;//RZ = Written To After The (Compute) Stage 
							'd15:	hexDisplayReg = RM;//RM = Written To After The (Compute) Stage And Is Used In The Memory Access Stage 
							'd16:	hexDisplayReg = RY;//RY = Written To After The (Memory Access) Stage 
							default: hexDisplayReg = 32'hF0F0;//(WARNING)Default Display 00
				endcase
			
			
			else//Do Not Drive The Display
				hexDisplayReg = 32'hF0F0; 
		end
 
 assign hexDisplay=hexDisplayReg;
 
endmodule




