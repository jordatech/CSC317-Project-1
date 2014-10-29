//ImmediateBlock
//Written by: Drake Jeno
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/28/2014

//I did not include MFC because it will need to be controled by the processor-memory interface
module ImmediateBlock (Address,clk, RZ, PC, MA_select, IR_enable, Extend, ImmediateValue, IR, MEM_write, MEM_read, RM);
	input IR_enable, MA_select, MEM_write, MEM_read,clk;
	input [1:0] Extend;
	input [31:0] RZ, PC, RM;
	output reg [31:0] ImmediateValue, IR;
	output [31:0] Address;
	wire [31:0] Data; // This will somehow be the word read from memory at the address determined by the PC(or RZ)
	
//MuxMA	
assign Address[31:0]=MA_select?PC[31:0]:RZ[31:0];
// did not use a clock because IR_enable is asserted by the control sig generator Fig. 5.21
always@(posedge IR_enable)
	begin
		case(MEM_read)
			1: IR[31:0]<=Data[31:0];
			default: ;
		endcase		
	end

always@(Extend)
	begin
		case(Extend)
			1: ImmediateValue[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend
			2: ImmediateValue[31:0] <= {16'b0, IR[21:6]};			//zero Extend
			3: ImmediateValue[31:0] <= {PC[31:28], IR[31:6], 2'b00};		//4 most sig bits of PC on left & 2 zeros on right
			default: ImmediateValue[31:0] <= {{16{IR[21]}}, IR[21:6]};	//sign Extend by default
		endcase
	end


endmodule
	