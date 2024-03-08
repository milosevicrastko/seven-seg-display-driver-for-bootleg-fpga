module counter(clk,reset,out);

	input clk;
	input reset;
	output reg out;

	reg[25:0] counter_reg, counter_next;
	
	
	always @(posedge(clk), posedge(reset))
	begin
		if(reset == 1'b1)
			counter_reg <= 1'b0;
		else
			if(counter_reg == 26'b10111110101111000010000001)
				counter_reg <= 26'b0;
			else 
				counter_reg <= counter_next;
	
	end 
	
	always @ (*)
	begin
		counter_next <= counter_reg + 26'b00000000000000000000000001;
		if(counter_reg == 26'b10111110101111000010000000)
			out <= 1'b1;
		else 
			out <= 1'b0;
		
	end 



endmodule 