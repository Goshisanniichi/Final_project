module mux4to2 (I0, I1, I2, I3, sel, mux_out);

input [31:0] I0, I1, I2, I3; 
input [1:0] sel;
output reg [31:0] mux_out;

always @ (sel, I0, I1, I2, I3)
	begin
	case (sel)

		/*sel==2b'00 mux_out<= I0;
		sel==2b'01 mux_out<= I1;
		sel==2b'10 mux_out<= I2;
		sel==2b'3 mux_out<= I3;
	*/
	
		2'b00: mux_out = I0;
		2'b01: mux_out = I1;
		2'b10: mux_out = I2;
		2'b11: mux_out = I3;
		
	endcase
	end
endmodule
	
	