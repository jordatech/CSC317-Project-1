//Jacob, Nile Jordan
//11:52 AM 11/17/2013 
//Stepper Motor Assignment
//Source http://www.fpga4fun.com/Debouncer2.html
//
//Edited By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/21/2014

// Base on the formula from (http://eewiki.net/pages/viewpage.action?pageId=13599139)
// our wait time is about 2^n /f = ~2.4 ms


module PushButton_Debouncer(
    input clock27MHz,
    input PB,  // "PB" is the glitchy, asynchronous to clk, active low push-button signal

    // from which we make three outputs, all synchronous to the clock
    output reg PB_state	 );  // 1 as long as the push-button is active (down)
   /*
	output PB_down,  // 1 for one clock cycle when the push-button goes down (i.e. just pushed)
    output PB_up   // 1 for one clock cycle when the push-button goes up (i.e. just released)
	*/

	 parameter N =15;
initial
	begin
	PB_state =0;//Start low
	end


// First use two flip-flops to synchronize the PB signal the "clock27MHz" clock domain
reg PB_sync_0;  always @(posedge clock27MHz) PB_sync_0 <= ~PB;  // invert PB to make PB_sync_0 active high
reg PB_sync_1;  always @(posedge clock27MHz) PB_sync_1 <= PB_sync_0;

// Next declare a 16-bits counter

reg [N:0] PB_cnt;

// When the push-button is pushed or released, we increment the counter
// The counter has to be maxed out before we decide that the push-button state has changed

wire PB_idle = (PB_state==PB_sync_1);
wire PB_cnt_max = &PB_cnt;	// true when all bits of PB_cnt are 1's
//delay is about 

always @(posedge clock27MHz)
if(PB_idle)
    PB_cnt <= 0;  // nothing's going on
else
begin
    PB_cnt <= PB_cnt + 1;  // something's going on, increment the counter
    if(PB_cnt_max) PB_state <= ~PB_state;  // if the counter is maxed out, PB changed!
end

assign PB_down = ~PB_idle & PB_cnt_max & ~PB_state;
assign PB_up   = ~PB_idle & PB_cnt_max &  PB_state;

endmodule