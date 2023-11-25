`timescale 1ns/1ps

module addern(cin, x, y, sum, cout);
    parameter n = 16;
    input cin;
    input [n-1:0] x, y;
    output [n-1:0] sum;
    output cout;
    assign {cout, sum} = x + y + cin;
endmodule

