module addr_v2 ( PCi, MuxIn, AddrOut);

input [31:0] PCi;
input [31:0] MuxIn;
output [31:0] AddrOut;

wire Cin, Cout;

assign Cin = 1'b0;
	
assign  {Cout, AddrOut} = PCi + MuxIn + Cin;

endmodule
