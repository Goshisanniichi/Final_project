module immgen(imm_in, sel, imm_out);

input  [31:0] imm_in ;
input  [1:0] sel;
wire [31:0] isel, ssel, bsel, opsel;

output [31:0] imm_out;


assign isel [11:0] = imm_in[31:20];
assign isel [31:12]= {20{imm_in[31]}};

assign ssel [11:0] = {imm_in[31:25],imm_in[11:7]};
assign ssel [31:12]= {20{imm_in[31]}};

assign bsel [0]= 1'b0;
assign bsel [11:1] = {imm_in[7], imm_in[30:25], imm_in[11:8]};
assign bsel [31:12]= {20{imm_in[7]}};

assign opsel = 32'b0;

mux4to2 imm (isel, ssel, bsel, opsel, sel, imm_out);//mux4to2 (I0, I1, I2, I3, sel, mux_out);

endmodule
