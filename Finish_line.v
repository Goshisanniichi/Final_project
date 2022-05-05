module Finish_line(clk, reset, final_out);

input clk, reset;
output [31:0] final_out;

wire RegRW, ALUsrc, MRW, WB, PCsrc,c_in;

wire [1:0] imm_sel;
wire [3:0] status, ALUop;
wire [31:0] Instr;


Lab_cu cu (clk, reset, status, Instr, RegRW, ALUsrc, ALUop, c_in, MRW, WB, PCsrc, imm_sel);
//Lab_cu (clk, reset, status, Instr, RegRW, ALUsrc, ALUop, c_in, MRW, WB, PCsrc, imm_sel);

Datapath dp (reset, clk, RegRW, ALUsrc, ALUop, c_in, MRW, WB, PCsrc, imm_sel, status, Instr, final_out);
//Datapath (reset, clk, RegRW, ALUsrc, ALUop, c_in, MRW, WB, PCsrc, imm_sel, status, Instr, final_out);

endmodule
