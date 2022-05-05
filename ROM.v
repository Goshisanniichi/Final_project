module ROM(address,  InstOut);

input [7:0] address;
//input clk;
output reg [31:0] InstOut;

always @(address)
begin
	case(address)

	8'd00 : InstOut = 32'b0;
	8'd04 : InstOut = 32'b00000000101000000000001010010011;
	8'd08 : InstOut = 32'b00000000110000000000001100010011;
	8'd12 : InstOut = 32'b00000000011100000000001110010011;  
	8'd16 : InstOut = 32'b00000000011000101000010000110011;
	8'd20 : InstOut = 32'b00000000011000000010100000100011;
	8'd24 : InstOut = 32'b00000000100000000010010010000011;
	8'd28 : InstOut = 32'b00000000100100111000010001100011;
	/*8'd28 : InstOut = 32'
	8'd32 : InstOut = 32'h01185a63;
	8'd24 : InstOut = 32'h01162023;
	8'd28 : InstOut = 32'hfff78793;
	8'd2c : InstOut = 32'hffc60613;
	8'd30 : InstOut = 32'hfe0796e3;
	8'd34 : InstOut = 32'h00279793;
	8'h38 : InstOut = 32'h00f507b3;
	8'h3c : InstOut = 32'h0107a023;
	8'h40 : InstOut = 32'h00170713;
	8'h44 : InstOut = 32'h00468693;
	8'h48 : InstOut = 32'hfc1ff06f;*/
	default : InstOut = 32'hx;
	
	endcase

end

endmodule
