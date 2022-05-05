module addr ( PCi, PCo);

/*input clk, reset;
input [7:0] pci; // program count in
output reg [7:0] pco;  // program count out
	
	always @ (posedge clk)
	begin
	if (reset) 
		pco = 8'd0;
	else 
		pco = pci + 8'd4;
	end*/
	input [31:0] PCi;
	output [31:0] PCo;
	
	assign PCo = PCi + 32'd4;

endmodule
