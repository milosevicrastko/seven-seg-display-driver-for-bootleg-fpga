module top_entity(clk, reset, out, cntrl, led);

input clk;

input reset;

output [7:0] out;

output [3:0] cntrl;

output led;

wire counter_to_incr;

wire first_to_second;

wire second_to_third;

wire third_to_forth;

wire forth_to_null;

wire [3:0] incr1_to_dec;

wire [3:0] incr2_to_dec;

wire [3:0] incr3_to_dec;

wire [3:0] incr4_to_dec;

wire [7:0] first_to_fsm;

wire [7:0] second_to_fsm;

wire [7:0] third_to_fsm;

wire [7:0] fourth_to_fsm;


counter cntr(clk, reset, counter_to_incr);

incrementer incr1(clk, reset, counter_to_incr, incr1_to_dec, first_to_second);

incrementer incr2(clk, reset, first_to_second, incr2_to_dec, second_to_third);

incrementer incr3(clk, reset, second_to_third, incr3_to_dec, third_to_forth);

incrementer incr4(clk, reset, third_to_forth, incr4_to_dec, forth_to_null);

decoder dec1(incr1_to_dec,first_to_fsm);

decoder dec2(incr2_to_dec,second_to_fsm);

decoder dec3(incr3_to_dec,third_to_fsm);

decoder dec4(incr4_to_dec,fourth_to_fsm);

four_state_mealy_state_machine fsm(first_to_fsm, second_to_fsm, third_to_fsm, fourth_to_fsm, clk, reset, out, cntrl );

four_state_moore_state_machine_led(clk,reset,led);

endmodule 

