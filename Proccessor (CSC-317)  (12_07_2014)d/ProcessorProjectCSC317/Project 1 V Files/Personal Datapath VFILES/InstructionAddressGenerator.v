//Instruction Address Generator
//By: Danny Johnson
//Project 1 datapath
//
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//12/01/2014

module InstructionAddressGenerator(BranchOff,RA,JumpTo,PC_select,PC_enable,INC_select,Clock,PC_temp,PC,PC_Reset);
	input 	wire 				PC_enable,INC_select,Clock,PC_Reset;
	input 	wire	[1:0]		PC_select;
	input 	wire	[31:0] 	BranchOff, RA;
	input 	wire	[6:0]		JumpTo;
	output 	reg	[31:0]	PC, PC_temp;
				wire	[31:0]	MuxINC, MuxPC;
				wire	[31:0]	NextAdd;
	initial PC =0;

	// (MuxINC)	[1,0]	[BranchOff,1]
	assign MuxINC = INC_select ? BranchOff-1: 32'd1;											// Multiplexer to select between decimal ONE or an
																											// immediate branch offset value, for incrementing the PC
	
	assign NextAdd	= PC + MuxINC; //Adder unit
	// (PC_Select) [3,2,1,0]	[BranchOff,BranchOff,NextAdd,RA]
	// 				[0]	-> PC = RA 			//Jump to RA_Out 
	// 				[1]	-> PC = NextAdd 	//Increment PC by (MuxINC)	[1,0]	[BranchOff,1]  
	// 				[2,3]	-> PC = BranchOff //Jump to Immediate value
	assign MuxPC = PC_select[1] ? (PC_select[0] ? BranchOff: BranchOff):(PC_select[0] ? NextAdd: RA);			// Multiplexer to select between a return address from the
																																				// register file or the incremented address from the adder unit
	

	always @(posedge Clock)
begin 	
	if(PC_enable & ~PC_Reset)begin		// Two registers (PC and PC_temp) to save the address of the current 
		PC <= MuxPC;
	end
	if(PC_Reset) begin						// For Debugging // PC_Reset is Key[3] 
		PC <= JumpTo;							// JumpTo is SW[17:11]
	end											// Instruction for either an address to find the next instruction (PC)												
		PC_temp <= PC;							// or an address to return to after a branch (PC_temp)
end 


endmodule 