`timescale 1ns/1ps

module tb_forward();

    reg clk, F;
    wire [3:0] count;

    counter_forward U1(clk, F, count);

    always#5 clk = ~clk;
    always#75 F = ~F;

    initial begin
        clk <= 0;
        F <= 0;
    end

endmodule
