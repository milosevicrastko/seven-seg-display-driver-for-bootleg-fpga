module decoder(decoder_in,decoder_out);

	input [3:0] decoder_in;
	output reg[7:0] decoder_out;

	always @ *
	begin

		case(decoder_in)
			4'b0000: decoder_out<=8'b11000000;  //0
			4'b0001: decoder_out<=8'b11111001;  //1
			4'b0010: decoder_out<=8'b10100100;  //2
			4'b0011: decoder_out<=8'b10110000;  //3
			4'b0100: decoder_out<=8'b10011001;  //4
			4'b0101: decoder_out<=8'b10010010;  //5
			4'b0110: decoder_out<=8'b10000011;  //6
			4'b0111: decoder_out<=8'b11111000;  //7
			4'b1000: decoder_out<=8'b10000000;  //8
			4'b1001: decoder_out<=8'b10011000;  //9
			default: decoder_out<=8'b11000000;  //default 
		endcase 
	end 


endmodule 