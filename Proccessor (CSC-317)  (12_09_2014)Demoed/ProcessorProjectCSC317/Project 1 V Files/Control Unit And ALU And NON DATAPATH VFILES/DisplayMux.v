//Display Debugger Mux
//Team #5
//Nathan Genetzky
//Jordan D. Ulmer - jordatech@gmail.com
//(10-13-2014)
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//12/01/2014


module DisplayMux(
//INPUT DATA+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
input wire[5:0] Display_Select,
input wire Display_Enable,
		// Register File
			input wire[4:0] RF_a, RF_b, RF_c,
			input wire RF_WRITE,
			input wire [31:0] RegFileRegisterToView,
		// Main Processor Datapath
			input wire[31:0] PC, IR_Out, RA, RB, RZ, RM, RY,
		// Select Lines
			input wire[1:0] C_Select, MA_Select, Y_Select,
			input wire		 B_Select, 
		// Counter 0-5
			input wire [2:0]Stage,
		// Decoded Instruction Format (0,1,2) = (a,b,c)
			input wire [1:0] InstructionFormat,

			input wire [31:0] Instruction_OP_Code, ALU_Op, ImmediateBlock_Out,
			input wire [31:0] MuxB_Out,
		// Condition Control Register
			input wire [31:0] CCR_Out, CCR_In,
		// Program Counter
			input wire PC_Select, INC_Select,
			input wire[31:0] PC_Temp,
		// Enable Control Signals
			input wire IR_Enable, PC_Enable,PC_Enable_Write_Back_Stage_Jump_Branch, RA_Enable, RB_Enable, RZ_Enable, RM_Enable, RY_Enable,
			input wire [1:0] MEM_r_w_z_z,
		// Memory
			input wire [31:0] MEM_Data_Out, MuxMA_Out,
			input wire MEM_ERROR,

//END INPUT DATA---------------------------------------------------------------------------------------------------------------------

//OUTPUT DATA++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	output reg[31:0] HexDisplay32Bits
//END OUTPUT DATA---------------------------------------------------------------------------------------------------------------------
);

parameter DebuggingOffset = 48; // Use an offset to incoperate the debuging order for our test scripts...

// Map RF_a to HEX 6&7, Map RF_b to HEX 4&5, Map RF_c to HEX 0&1
wire [31:0] AddressRF;
											//{2'b0,RF_a} Because Addresses are 5 Bits and Display is 4Bits Per Hex 
		assign AddressRF[31:24] = {2'b0,RF_a[4:0]};//Address (a) In The Register File INPUT DATA To Processor
		assign AddressRF[23:16] = {2'b0,RF_b[4:0]};//Address (b) In The Register File INPUT DATA To Processor
		assign AddressRF[15:8] = 8'h00;
		assign AddressRF[7:0] = {2'b0,RF_c[4:0]};//Address (c) In The Register File OUTPUT DATA From Processor

//Map ControlSignals_Enables
wire [31:0] ControlSignals_Enables;
		assign ControlSignals_Enables[3:0] 		= {3'b0,IR_Enable}; 	// IR
		assign ControlSignals_Enables[7:4] 		= {3'b0,PC_Enable}; 	// PC
		assign ControlSignals_Enables[11:8]		= {3'b0,RA_Enable}; 	// RA
		assign ControlSignals_Enables[15:12]	= {3'b0,RB_Enable}; 	// RB
		assign ControlSignals_Enables[19:16]	= {3'b0,RZ_Enable}; 	// RZ
		assign ControlSignals_Enables[23:20]	= {2'b0,RM_Enable};// RM
		assign ControlSignals_Enables[27:24]	= {2'b0,MEM_r_w_z_z};// Memory	
		assign ControlSignals_Enables[31:28]	= {3'b0,RY_Enable}; 	// RY
			
// Condition Control Register
  //CCR 32-Bit Format [...NOP, IFNR, INR , N, Z, V, C]
  //CCR [... No Operation, Instruction Format Not Recognized, Instruction Not Recognized, Negative,Zero,Overflow,Carry]	
wire [31:0] ConditionControlFlags_In;
		assign ConditionControlFlags_In[3:0]  	= {3'b0,CCR_In[0]}; // Carry
		assign ConditionControlFlags_In[7:4]  	= {3'b0,CCR_In[1]}; // Overflow
		assign ConditionControlFlags_In[11:8] 	= {3'b0,CCR_In[2]}; // Zero
		assign ConditionControlFlags_In[15:12]	= {3'b0,CCR_In[3]}; // Negative
		assign ConditionControlFlags_In[19:16]	= {3'b0,CCR_In[4]}; // Instruction Not Recognized
		assign ConditionControlFlags_In[23:20]	= {3'b0,CCR_In[5]}; // Instruction Format Not Recognized		
		assign ConditionControlFlags_In[27:24]	= {3'b0,CCR_In[6]}; // No Operation		
		assign ConditionControlFlags_In[31:28]	= PC_Enable_Write_Back_Stage_Jump_Branch;	
		
wire [31:0] ConditionControlFlags_Out;
		assign ConditionControlFlags_Out[3:0]  	= {3'b0,CCR_Out[0]}; // Carry
		assign ConditionControlFlags_Out[7:4]  	= {3'b0,CCR_Out[1]}; // Overflow
		assign ConditionControlFlags_Out[11:8] 	= {3'b0,CCR_Out[2]}; // Zero
		assign ConditionControlFlags_Out[15:12]	= {3'b0,CCR_Out[3]}; // Negative
		assign ConditionControlFlags_Out[19:16]	= {3'b0,CCR_Out[4]}; // Instruction Not Recognized
		assign ConditionControlFlags_Out[23:20]	= {3'b0,CCR_Out[5]}; // Instruction Format Not Recognized		
		assign ConditionControlFlags_Out[27:24]	= {3'b0,CCR_Out[6]}; // No Operation		
		assign ConditionControlFlags_Out[31:28]	= 4'b0;	
		
		
always @(*)//Update the Display_Selected contents when anything changes
	begin
	//pushbuttons are active low but this is the only way I'll know that it was the clock which triggered this statement
		if	(Display_Enable) //Could use to have something else drive the display...
			begin
				//HexDisplay32Bits = 16'h0FF0; //OFF
				HexDisplay32Bits = RegFileRegisterToView;		// Register In Register File Selected By "RegFileView_Select[4:0] " = "switch[17:13]"
			end
		
		else if(~Display_Enable) //Automatically put Display Mux The Display
		begin
			case(Display_Select)
				0:  HexDisplay32Bits = Stage[2:0];							// Clocks since last instruction 0,1,2,3,4,0,1... RESETS AFTER 5
				1:	 HexDisplay32Bits = PC[31:0];								// Program Counter, Auto Increments Prior To The (Fetch) Stage 
				2:	 HexDisplay32Bits = IR_Out[31:0]; 						// Instruction Register, MEM_Data_Out latches MEM_Data_Out when Stage==0 //Instruction Register Written To After The (Fetch) Stage 
				3:  HexDisplay32Bits = ConditionControlFlags_Out[31:0];	// OUTPUT Condition Control Flags - Chunked Display [-, NOP, IFNR, INR , N, Z, V, C]
				4:  HexDisplay32Bits = AddressRF[31:0];					// Display Register File Adresses - Chunked Display [RF_a,RF_b,--RF_c]
				5:	 HexDisplay32Bits = RA[31:0];								// RA = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
				6:	 HexDisplay32Bits = RB[31:0];								// RB = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
				7:	 HexDisplay32Bits = RZ[31:0];								// RZ = Written To After The (Compute) Stage 
				8:	 HexDisplay32Bits = RM[31:0];								// RM = Written To After The (Compute) Stage And Is Used In The Memory Access Stage 
				9:	 HexDisplay32Bits = RY[31:0];								// RY = Written To After The (Memory Access) Stage 
				10: HexDisplay32Bits = CCR_Out[31:0];						// Condition Control Register
				11: HexDisplay32Bits = MEM_Data_Out[31:0];				// ROM Output ...
				12: HexDisplay32Bits = PC_Temp[31:0];						// PC-1 or PC-BranchOffset or PC-RA // One Cycle Behind...
				13: HexDisplay32Bits = PC_Select;							// Increment PC "0"->jump to "RA" .... "1"->inc by MuxINC  // MuxPC = PC_select ? NextAdd: RA
				14: HexDisplay32Bits = ControlSignals_Enables;			// [RY,MEM_r_w_z_z,RM,RZ,RB,RA,PC,IR]
				15: HexDisplay32Bits = INC_Select;							// Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
				16: HexDisplay32Bits = C_Select[1:0];						// C_Select[2,1,0] = [format (c) LINK, format (b) IR[21-17], format (a) IR[26-22]]	//Rdst
				17: HexDisplay32Bits = Y_Select[1:0];						// (Y_Select) [2,1,0] = {Return_Address,MEM_Data_Out,RZ_Out}
				18: HexDisplay32Bits = ImmediateBlock_Out[31:0];		// Immediate Value Muxed into ALU or other
				19: HexDisplay32Bits = InstructionFormat[1:0];			// Determined in Decode Stage (a,b,c)=(0,1,2)  INCORRECTLY DECODED, BUT NOT USED...                               
				20: HexDisplay32Bits = ALU_Op[31:0];						// ALU Control Signal(ie: add, subtract...)
				21: HexDisplay32Bits = MuxB_Out[31:0];						// RB, and Immediate Values...
				22: HexDisplay32Bits = RF_WRITE;								// Write Back To Register File= 1
				23: HexDisplay32Bits = RegFileRegisterToView;			// Register In Register File Selected By "RegFileView_Select[4:0] " = "switch[17:13]"
				24: HexDisplay32Bits = MEM_ERROR;							// 1 if MEM_Address is > 127 
				25: HexDisplay32Bits = PC_Enable_Write_Back_Stage_Jump_Branch; 		// Enable PC in Stage 4 to Jump to a location in JMP,JSR Operations...
				26: HexDisplay32Bits = B_Select; 							// B_Select[1,0] = {ImmediateBlock_Out,RB_Out} For MuxB
				27: HexDisplay32Bits = ConditionControlFlags_In[31:0];	// INPUT Condition Control Flags - Chunked Display [PC_Enable_WB, NOP, IFNR, INR , N, Z, V, C]
				28: HexDisplay32Bits = Instruction_OP_Code;	// Operation Sector From Instruction Register
				29: HexDisplay32Bits = MuxMA_Out; 							// Memory Address From PC or RZ
				
				//For Debugging Streamline Debugging Script
				0+DebuggingOffset:	 HexDisplay32Bits = IR_Out[31:0];					// C_Select[2,1,0] = {LINK,IR_Out[21:17],IR_Out[26:22]}
				1+DebuggingOffset:	 HexDisplay32Bits = ImmediateBlock_Out[31:0];	// Immediate Value Muxed into ALU or other
				2+DebuggingOffset:	 HexDisplay32Bits = RA[31:0];							// RA = Written To After The (Decode) Stage And Is Used In The ALU (Compute) Stage
				3+DebuggingOffset:	 HexDisplay32Bits = MuxB_Out[31:0];					// RB, and Immediate Values...
				4+DebuggingOffset:	 HexDisplay32Bits = RZ[31:0];							// RZ = Written To After The (Compute) Stage 
				5+DebuggingOffset:	 HexDisplay32Bits = RY[31:0];							// RY = Written To After The (Memory Access) Stage  
				6+DebuggingOffset:	 HexDisplay32Bits = RegFileRegisterToView;		// Register In Register File Selected By "RegFileView_Select[4:0] " = "switch[17:13]"
				
				default: HexDisplay32Bits = 16'hDEDE;						//"Display Error"
			endcase
		end
	end
	

endmodule