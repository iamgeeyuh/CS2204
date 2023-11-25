`timescale 1ns/1ps

module tb();

    reg clk;
    wire [3:0] count;

    counter U1(clk, count);

    always#5 clk = ~clk;

    initial begin
        clk <= 0;
    end

endmodule
