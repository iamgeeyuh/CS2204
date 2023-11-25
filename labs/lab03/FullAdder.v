`timescale 1ns / 1ps

module FullAdder(input a, b, cin,
                 output sum, cout);

assign cout = (a & b) | (a & cin) | (b & cin);
assign sum = (a ^ b ^ cin);

endmodule