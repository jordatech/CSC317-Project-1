/* RegisterFile (Intial Design) 
	CSC-317
	10/11/2014
	Written by: Drake Jeno
					Jeremy Laird
*/
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//11/07/2014
	//Added RF_WRITE Control Signal

/******BRIEF DESCRIPTION****************
	REFERENCE: Figure 5.8, "Computer Organization and Embedded Systems, 6th Ed."
	
	Rdst:		5 bit address of the destination register
	Rsrc1:	5 bit address of the first register in the opperand
					-This register is written to RA
	Rsrc2:	5 bit address of the second register in the opperand
					-This register goes to RB
	RA,RB:	are 32 bit outputs and should portmapped to the respective registers of the processor
	RY:		32 bit input and should be portmapped to RY 
	Comment:  To implement in a piplined processor Rsrc1 and Rsrc2 will not come from the same instruction
				 as Rdst.
*/
 
/********************BEGIN MODULE*****************/

module RegisterFile(Rdst,Rsrc1,Rsrc2,RA,RB,RY,clk,RF_WRITE,RegFileView_Select,RegFileRegisterToView);
	input wire [4:0]Rdst,Rsrc1,Rsrc2;
	input wire clk, RF_WRITE;
	input wire [31:0]RY;
	output wire [31:0]RA,RB;
	//Debugging Tool (11-07-2014)
	input wire [4:0] RegFileView_Select;
	output wire [31:0]RegFileRegisterToView;
	// View Any Register In The Register File
		assign RegFileRegisterToView = R[RegFileView_Select[4:0]][31:0];

	//Initialize 32 32-bit registers
		reg[31:0]R[31:0]; 

	
	//RA and RB are assigned the contents of the general purpose registers specified by Rsrc1(5 bits) and Rsrc2 
		assign RA[31:0]=R[Rsrc1][31:0];									
		assign RB[31:0]=R[Rsrc2][31:0];
	
	//At each clock the contents of RY are written to the general purpose register specified by Rdst(5 bits)
		always@(posedge clk)
			begin
				if(RF_WRITE)begin
					R[Rdst][31:0]<=RY[31:0];
				end
			end
		
endmodule 
		