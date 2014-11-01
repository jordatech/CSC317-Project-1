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
	
//	ClockCount <= (ClockCount[2:0] % 5) + 1;// Reset at five 0,1,2,3,4,0,1,2....
		if(ClockCount==5)begin
			ClockCount <= 1;
		end
		else begin
			ClockCount[2:0] <= ClockCount[2:0] + 1;// Reset at five 0,1,2,3,4,0,1,2....
		end
	end

endmodule 