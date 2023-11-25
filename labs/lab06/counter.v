`timescale 1ns/1ps

module counter(
    input clk, rstn,
    output wire [2:0] count
);

    wire c1, c2, c3;

    dff u1(.d(c1), .clk(clk), .rstn(rstn), .q(count[0]), .qn(c1));
    dff u2(.d(c2), .clk(c1), .rstn(rstn), .q(count[1]), .qn(c2));
    dff u3(.d(c3), .clk(c2), .rstn(rstn), .q(count[2]), .qn(c3));

endmodule