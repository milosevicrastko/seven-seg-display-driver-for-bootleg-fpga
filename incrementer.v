module incrementer(clk, reset, incr_in, incr_out, incr_enable);

	input clk;
	input reset; 
	input incr_in;
	output reg [3:0] incr_out;
	output reg incr_enable;
	
	reg[3:0] incr_reg, incr_next;
	always @ (posedge(clk), posedge(reset))
		begin
			if(reset==1'b1)
				incr_reg <= 4'b0000; //0000
			else
				if(incr_reg == 4'b1010)  //1010
				 
					incr_reg <= 4'b0000;   //0000
				
				else 
					incr_reg <= incr_next;
		
		end 
		always @ (*)
			begin
				if(incr_in == 1'b1) incr_next <= incr_reg + 4'b0001;
				else incr_next <= incr_reg;
				
				if(incr_reg == 4'b1010)  //if(incr_reg == 4'b1010 )  
					incr_enable <= 1'b1;
				else 	
					incr_enable <= 1'b0;
					
				incr_out <= incr_reg;
			
			end  

endmodule 