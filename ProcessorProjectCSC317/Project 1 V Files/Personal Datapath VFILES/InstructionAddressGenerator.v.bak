//Instruction Address Generator
//By: Danny Johnson
//Project 1 datapath
//
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//9:05 PM 10/20/2014

module InstructionAddressGenerator (BranchOff,RA,PC_select,PC_enable,INC_select,Clock,PC_temp,PC);
	input PC_select,PC_enable,INC_select,Clock;
	input [31:0]BranchOff, RA;
	output reg [31:0]PC, PC_temp;
	wire [31:0]MuxINC, MuxPC;
	wire [31:0]NextAdd;
	
	assign NextAdd	= PC + MuxINC; //Adder unit
	
	assign MuxPC = PC_select ? NextAdd: RA;			// Multiplexer to select between a return address from the
																	// register file or the incremented address from the adder unit
	
	assign MuxINC = INC_select ? BranchOff: 32'd4;	// Multiplexer to select between decimal four or an
																	// immediate branch offset value, for incrementing the PC
	
	

	always @(posedge Clock)
begin 	

	if(PC_enable)								// Two registers (PC and PC_temp) to save the address of the current 
		PC <= MuxPC;							// instruction for either an address to find the next instruction (PC)
													// or an address to return to after a branch (PC_temp)
		PC_temp <= PC;
end 


endmodule 