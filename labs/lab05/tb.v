`timescale 1ns/1ps

module tb;

    reg [1:0] sel;
    reg f;
    wire a, b, c, d;

    demulti U1(sel, f, a, b, c, d);

    initial begin
        sel = 2'b00; f = 0;
        #20 sel = 2'b01; f = 0;
        #20 sel = 2'b10; f = 0;
        #20 sel = 2'b11; f = 0;
        #20 sel = 2'b00; f = 1;
        #20 sel = 2'b01; f = 1;
        #20 sel = 2'b10; f = 1;
        #20 sel = 2'b11; f = 1;
    end

endmodule