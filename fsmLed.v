// Quartus II Verilog Template
// 4-State Moore state machine

// A Moore machine's outputs are dependent only on the current state.
// The output is written only when the state changes.  (State
// transitions are synchronous.)

module four_state_moore_state_machine_led
(
	input clk,
	input reset,
	output reg out
);

	// Declare state register
	reg		[1:0]state;
	reg [25:0] counter;
	// Declare states
	parameter S0 = 0, S1 = 1;

	// Output depends only on the state
	always @ (state) begin
		case (state)
			S0:
				out = 1'b1;
			S1:
				out = 1'b0;
		endcase
	end

	// Determine the next state
	always @ (posedge clk or posedge reset) begin
		if (reset)
			state <= S0;
		else
			case (state)
				S0:
					begin
						counter <= counter + 1'b1;
						if(counter == 26'b10111110101111000010000000)
							state <= S1;
						else 
							state<= S0;
					end 
				S1:
						begin
						counter <= counter + 1'b1;
						if(counter == 26'b10111110101111000010000000)
							state <= S0;
						else 
							state<= S1;
					end 
			endcase
	end

endmodule
