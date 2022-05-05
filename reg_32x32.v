module reg_32x32 (reset, D, DA, SA, SB, W, A, B);//SA-ReadAddress1, SB-ReadAddress2, DA-WriteAddress,

input   reset, W; // ,
input [4:0] DA, SA, SB;
input [31:0] D; // 32 bit data in
output [31:0] A,B; // 32 bit data out

wire [31:0] load_sig;
wire [31:0] Data_out0, Data_out1, Data_out2, Data_out3, Data_out4, Data_out5, Data_out6, Data_out7; 
wire [31:0]	Data_out8, Data_out9, Data_out10, Data_out11, Data_out12, Data_out13, Data_out14, Data_out15;
wire [31:0]	Data_out16, Data_out17, Data_out18, Data_out19, Data_out20, Data_out21, Data_out22, Data_out23; 
wire [31:0]	Data_out24, Data_out25, Data_out26, Data_out27, Data_out28, Data_out29, Data_out30, Data_out31; 
				//declare 32 iNPUT TO MUX



//reg_N_bit reg00 (reset, load_sig[0], D, Data_out0); // load -signal(load_sig), data_in-D
reg_N_bit reg01 (reset, load_sig[1], D, Data_out1); // load -signal(load_sig), data_in-D
reg_N_bit reg02 (reset, load_sig[2], D, Data_out2); // load -signal(load_sig), data_in-D
reg_N_bit reg03 (reset, load_sig[3], D, Data_out3); // load -signal(load_sig), data_in-D
reg_N_bit reg04 (reset, load_sig[4], D, Data_out4); // load -signal(load_sig), data_in-D
reg_N_bit reg05 (reset, load_sig[5], D, Data_out5); // load -signal(load_sig), data_in-D
reg_N_bit reg06 (reset, load_sig[6], D, Data_out6); // load -signal(load_sig), data_in-D
reg_N_bit reg07 (reset, load_sig[7], D, Data_out7); // load -signal(load_sig), data_in-D
reg_N_bit reg08 (reset, load_sig[8], D, Data_out8); // load -signal(load_sig), data_in-D
reg_N_bit reg09 (reset, load_sig[9], D, Data_out9); // load -signal(load_sig), data_in-D
reg_N_bit reg10 (reset, load_sig[10], D, Data_out10); // load -signal(load_sig), data_in-D
reg_N_bit reg11 (reset, load_sig[11], D, Data_out11); // load -signal(load_sig), data_in-D
reg_N_bit reg12 (reset, load_sig[12], D, Data_out12); // load -signal(load_sig), data_in-D
reg_N_bit reg13 (reset, load_sig[13], D, Data_out13); // load -signal(load_sig), data_in-D
reg_N_bit reg14 (reset, load_sig[14], D, Data_out14); // load -signal(load_sig), data_in-D
reg_N_bit reg15 (reset, load_sig[15], D, Data_out15); // load -signal(load_sig), data_in-D
reg_N_bit reg16 (reset, load_sig[16], D, Data_out16); // load -signal(load_sig), data_in-D
reg_N_bit reg17 (reset, load_sig[17], D, Data_out17); // load -signal(load_sig), data_in-D
reg_N_bit reg18 (reset, load_sig[18], D, Data_out18); // load -signal(load_sig), data_in-D
reg_N_bit reg19 (reset, load_sig[19], D, Data_out19); // load -signal(load_sig), data_in-D
reg_N_bit reg20 (reset, load_sig[20], D, Data_out20); // load -signal(load_sig), data_in-D
reg_N_bit reg21 (reset, load_sig[21], D, Data_out21); // load -signal(load_sig), data_in-D
reg_N_bit reg22 (reset, load_sig[22], D, Data_out22); // load -signal(load_sig), data_in-D
reg_N_bit reg23 (reset, load_sig[23], D, Data_out23); // load -signal(load_sig), data_in-D
reg_N_bit reg24 (reset, load_sig[24], D, Data_out24); // load -signal(load_sig), data_in-D
reg_N_bit reg25 (reset, load_sig[25], D, Data_out25); // load -signal(load_sig), data_in-D
reg_N_bit reg26 (reset, load_sig[26], D, Data_out26); // load -signal(load_sig), data_in-D
reg_N_bit reg27 (reset, load_sig[27], D, Data_out27); // load -signal(load_sig), data_in-D
reg_N_bit reg28 (reset, load_sig[28], D, Data_out28); // load -signal(load_sig), data_in-D
reg_N_bit reg29 (reset, load_sig[29], D, Data_out29); // load -signal(load_sig), data_in-D
reg_N_bit reg30 (reset, load_sig[30], D, Data_out30); // load -signal(load_sig), data_in-D
reg_N_bit reg31 (reset, load_sig[31], D, Data_out31); // load -signal(load_sig), data_in-D

assign Data_out0 = 32'b0; 

Decoder_reg_file dut2 (DA, load_sig[31],load_sig[30],load_sig[29],load_sig[28],load_sig[27],load_sig[26],
				load_sig[25],load_sig[24],load_sig[23],load_sig[22],load_sig[21],load_sig[20],load_sig[19],
				load_sig[18],load_sig[17],load_sig[16],load_sig[15],load_sig[14],load_sig[13],load_sig[12], 
				load_sig[11],load_sig[10],load_sig[9],load_sig[8],load_sig[7],load_sig[6],load_sig[5],load_sig[4],
				load_sig[3],load_sig[2],load_sig[1],load_sig[0],W); //DA-writeAddress, W-enable, load_sig is enable for specified register
				
				
				
				
mux5to32 muxa (A, SA, Data_out0, Data_out1, Data_out2, Data_out3, Data_out4, Data_out5, Data_out6, Data_out7, 
				Data_out8, Data_out9, Data_out10, Data_out11, Data_out12, Data_out13, Data_out14, Data_out15,
				Data_out16, Data_out17, Data_out18, Data_out19, Data_out20, Data_out21, Data_out22, Data_out23, 
				Data_out24, Data_out25, Data_out26, Data_out27, Data_out28, Data_out29, Data_out30, Data_out31);		//S-select, F-output	A	
				

mux5to32 muxb (B, SB, Data_out0, Data_out1, Data_out2, Data_out3, Data_out4, Data_out5, Data_out6, Data_out7, 
				Data_out8, Data_out9, Data_out10, Data_out11, Data_out12, Data_out13, Data_out14, Data_out15,
				Data_out16, Data_out17, Data_out18, Data_out19, Data_out20, Data_out21, Data_out22, Data_out23, 
				Data_out24, Data_out25, Data_out26, Data_out27, Data_out28, Data_out29, Data_out30, Data_out31);		//S-select, F-output	B					
				
endmodule				
