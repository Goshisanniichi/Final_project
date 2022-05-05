module reg_N_bit (reset, load, data_in, data_out);

parameter N=32;

input reset, load; 
input [N-1:0] data_in;
output reg [N-1:0] data_out;

	always @ (*)
	begin
	if (reset) 
		data_out <= 0;
	else if (load == 1)
		data_out <= data_in;
	end
		
endmodule
	
