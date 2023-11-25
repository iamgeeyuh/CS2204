`timescale 1ns/1ps

module tb();

    reg clk, rstn;
    wire[2:0] count;

    counter u1(.clk(clk), .rstn(rstn), .count(count));

    always#5 clk = ~clk;

    initial begin
        clk <= 0; rstn <= 0;
        #10 rstn <= 1;
        #45 rstn <= 0;
        #65 rstn <= 1;
    end


endmodule