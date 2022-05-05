module Datapath (reset, clk, RegRW, ALUsrc, ALUop, c_in, MRW, WB, PCsrc, imm_sel, status, Instr, final_out);

input reset, clk, RegRW, ALUsrc, MRW, WB, PCsrc,c_in;
input [1:0] imm_sel;
input [3:0] ALUop;
output [3:0] status;
output [31:0] Instr, final_out;

wire [31:0] finout;
wire [4:0] rd,rs1,rs2;
//wire [11:0] imm; 
wire [31:0] PCout,PCo;
wire [31:0] PCIn;
wire [31:0] ROMout;
wire [31:0] b;
wire [31:0] A, B;
wire [31:0] RAMout;
wire [31:0] ALUout;
wire [31:0] imm_out,AddrOut;

/*wire[] RF1; 
wire[] RF2
wire[] RegRW 
wire []immgenout
wire []addr
wire []adderout*/
/*wire []instrout
wire [] MRW
wire [] ALUin
,*/


ProgramCounter inst0 (clk, reset, PCIn, PCout); //ProgramCounter(clk, reset, PCIn, PCOut) xx 


addr inst1 (PCout,PCo); //addr (PCi, PCo); xx 


ROM inst2 (PCout[7:0], ROMout); // ROM(address,  InstOut); xx


InstructionDecoder inst3 (ROMout, rd, rs1, rs2); //InstructionDecoder(instr, rd, rs1, rs2); xx


reg_32x32 inst4 (reset, finout, rd, rs1, rs2, RegRW, A, B); //reg_32x32 (clock, reset, D, DA, SA, SB, W, A, B); xx


mux2to1 rfimmtoalu (B, imm_out, ALUsrc, b); //mux2to1 (mIn1, mIn2, sel, mOut);

mux2to1 adr2adr (PCo,AddrOut, PCsrc, PCIn); //mux2to1 (mIn1, mIn2, sel, mOut); xx

mux2to1 ramalutorf (RAMout, ALUout, WB, finout ); //mux2to1 (mIn1, mIn2, sel, mOut);


immgen inst8 (ROMout, imm_sel, imm_out); //immgen(imm_in, sel, imm_out); 


addr_v2 inst9 (PCout, imm_out, AddrOut); //addr_v2 ( PCi, MuxIn, AddrOut); xx 


RAM_256x32 inst10 (clk, MRW, B, ALUout[7:0], RAMout); //RAM_256x32(CLK, WR, Din, address, Dout);


ALU inst11 (A, b, c_in, ALUop[2:0], ALUop[3], ALUout, status); //ALU  (A, B, c_in, sel, sub, out, status);

assign Instr = ROMout;
assign final_out = finout;


endmodule 
