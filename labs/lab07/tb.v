`timescale 1ns/1ps

module tb();

    reg clk, x;
    wire z;
    integer i;

    decoderB U1(.x(x), .clk(clk), .z(z));

    always#5 clk = ~clk;

    initial begin
        clk <= 0; x <= 0;
        for (i = 0; i < 100; i = i + 1) begin
            x <= $random;
            #10;
        end
    #20 $finish;
    end

endmodule