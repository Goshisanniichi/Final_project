module mux2to1 (mIn1, mIn2, sel, mOut);

	input  sel;
	input [31:0] mIn1,mIn2;
	output reg [31:0] mOut;

	always @(sel)
	begin
		
	mOut = sel ? mIn2 : mIn1;

	end

endmodule
