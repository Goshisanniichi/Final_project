module neg (B, sub, B_out);
	
	input sub;
	input [31:0] B;
	wire [31:0] B_neg;
	output reg [31:0] B_out;
	
	assign B_neg = ~B+1;
	
	always @ (sub)
	begin
	
	B_out = sub? B_neg : B;
	
	end
	
endmodule
