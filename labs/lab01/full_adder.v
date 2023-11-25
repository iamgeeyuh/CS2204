`timescale 1ns/1ps

module full_adder(input a, b, cin, output sum, cout);
	assign cout = (a & b) | (a & cin) | (b & cin);
	assign sum = (a ^ b ^ cin);
endmodule