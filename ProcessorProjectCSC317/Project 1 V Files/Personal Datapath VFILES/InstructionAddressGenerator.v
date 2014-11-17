//Instruction Address Generator
//By: Danny Johnson
//Project 1 datapath
//
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//11/16/2014

module InstructionAddressGenerator(BranchOff,RA,PC_select,PC_enable,INC_select,Clock,PC_temp,PC,PC_Reset);
	input wire PC_enable,INC_select,Clock,PC_Reset;
	input wire [1:0]		PC_select;
	input wire [31:0] BranchOff, RA;
	output reg [31:0]PC, PC_temp;
	wire [31:0]MuxINC, MuxPC;
	wire [31:0]NextAdd;
	

	//(INC_select) Increment PC "0"->inc by "1" .... "1"->inc by "BranchOffset"  // MuxINC = INC_select ? BranchOffset: 32'd1
	assign MuxINC = INC_select ? BranchOff: 32'd1;	// Multiplexer to select between decimal ONE or an
																	// immediate branch offset value, for incrementing the PC
	
	assign NextAdd	= PC + MuxINC; //Adder unit
	
	//(PC_select) Increment PC "0"->jump to "RA" .... "1"->inc by MuxINC  // MuxPC = PC_select ? NextAdd: RA
	//(PC_select) [00]->RA, [01]->NextAdd, [1x]->BranchOff
	assign MuxPC = PC_select[1] ? (PC_select[0] ? BranchOff: BranchOff):(PC_select[0] ? NextAdd: RA);			// Multiplexer to select between a return address from the
																	// register file or the incremented address from the adder unit
	

	always @(posedge Clock)
begin 	

	if(PC_enable & ~PC_Reset)begin								// Two registers (PC and PC_temp) to save the address of the current 
		PC <= MuxPC;
	end
	if(PC_Reset) begin
		PC <=0;
	end											// instruction for either an address to find the next instruction (PC)
													// or an address to return to after a branch (PC_temp)
		PC_temp <= PC;
end 


endmodule 