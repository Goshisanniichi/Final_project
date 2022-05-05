module ProgramCounter(clk, reset, PCIn, PCOut);

	input clk;
	input reset;
	input [31:0]PCIn;
	output reg [31:0]PCOut; 

	always @(posedge clk)
	begin
		if (reset)
			PCOut = 0;
		else 
			PCOut = PCIn;
		
	end

endmodule