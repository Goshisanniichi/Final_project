
module mux5to32 (F, S, m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, 
		m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, 
		m29, m30, m31);

		
	parameter N=32;

	input [4:0] S; //select
	input [N-1:0] m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30, m31;
	output reg [N-1:0] F;

	always @(m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, m10, m11, m12, m13, m14, m15, m16, m17, m18, m19, m20, m21, m22, m23, m24, m25, m26, m27, m28, m29, m30, m31,S)
	begin
		case (S)
		
		5'b00000: F = m0;
		5'b00001: F = m1;
		5'b00010: F = m2;
		5'b00011: F = m3;
		5'b00100: F = m4;
		5'b00101: F = m5;
		5'b00110: F = m6;
		5'b00111: F = m7;
		5'b01000: F = m8;
		5'b01001: F = m9;
		5'b01010: F = m10;
		5'b01011: F = m11;
		5'b01100: F = m12;
		5'b01101: F = m13;
		5'b01110: F = m14;
		5'b01111: F = m15;
		5'b10000: F = m16;
		5'b10001: F = m17;
		5'b10010: F = m18;
		5'b10011: F = m19;
		5'b10100: F = m20;
		5'b10101: F = m21;
		5'b10110: F = m22;
		5'b10111: F = m23;
		5'b11000: F = m24;
		5'b11001: F = m25;
		5'b11010: F = m26;
		5'b11011: F = m27;
		5'b11100: F = m28;
		5'b11101: F = m29;
		5'b11110: F = m30;
		5'b11111: F = m31;
		//default : F = 5'bx;

		endcase
	end

endmodule