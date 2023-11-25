`timescale 1ns/1ps

module tb_odd_even();

    reg clk, F, P;
    wire [3:0] count;

    counter_odd_even U1(clk, F, P, count);

    always#5 clk = ~clk;
    always#75 F = ~F;
    always#40 P = ~P;

    initial begin
        clk <= 0;
        F <= 0;
        P <= 0;
    end

endmodule