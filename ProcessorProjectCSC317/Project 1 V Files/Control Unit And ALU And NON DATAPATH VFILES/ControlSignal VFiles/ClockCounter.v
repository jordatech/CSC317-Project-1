//Clock Counter
//Created By TEAM GAMMA - Jordan D. Ulmer And Patrick Schroeder
//10/28/2014

module ClockCounter(Clock,ClockCount);
	input wire Clock;
	output reg [2:0] ClockCount;
	initial begin 
		ClockCount=1; 
	end

	always @(posedge Clock)
	begin 
	
		if(ClockCount==5)begin 	//reset at 5
			ClockCount <= 1;		//start at 1	
		end							//1,2,3,4,5,1,2,3...
		else begin
			ClockCount[2:0] <= ClockCount[2:0] + 1'b1; //
		end
	end

endmodule 