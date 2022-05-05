module InstructionDecoder(instr, rd, rs1, rs2); 

input [31:0]instr; 

output reg [4:0] rd, rs1, rs2;
//output reg [11:0] imm;

/*reg [4:0]rd;
reg [4:0]rs1;
reg [4:0]rs2;
reg [11:0]imm;*/

always @(instr)   begin 

	 rd = instr[11:7];
	 rs1 = instr[19:15];
	 rs2 = instr[24:20];
	 //imm = instr[31:20];

end 
endmodule
