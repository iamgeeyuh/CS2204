`timescale 1ns/1ps

module decoder_c(

    input a, b, c,
    output z0, z1, z2, z3, z4, z5, z6, z7

);

    assign z0 = (~a & ~b & ~c) ? 1'b1 : 1'b0;
    assign z1 = (a & ~b & ~c) ? 1'b1 : 1'b0;
    assign z2 = (~a & b & ~c) ? 1'b1 : 1'b0;
    assign z3 = (a & b & ~c) ? 1'b1 : 1'b0;
    assign z4 = (~a & ~b & c) ? 1'b1 : 1'b0;
    assign z5 = (a & ~b & c) ? 1'b1 : 1'b0;
    assign z6 = (~a & b & c) ? 1'b1 : 1'b0;
    assign z7 = (a & b & c) ? 1'b1 : 1'b0;

endmodule