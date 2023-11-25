`timescale 1ns/1ps

module testbench();

    reg a, b, c;
    wire z0, z1, z2, z3, z4, z5, z6, z7;

    decoder_c U1(a, b, c, z0, z1, z2, z3, z4, z5, z6, z7);

    initial begin
        a = 1'b0; b = 1'b0; c = 1'b0;
        #20 a = 1'b1; b = 1'b0; c = 1'b0;
        #20 a = 1'b0; b = 1'b1; c = 1'b0;
        #20 a = 1'b1; b = 1'b1; c = 1'b0;
        #20 a = 1'b0; b = 1'b0; c = 1'b1;
        #20 a = 1'b1; b = 1'b0; c = 1'b1;
        #20 a = 1'b0; b = 1'b1; c = 1'b1;
        #20 a = 1'b1; b = 1'b1; c = 1'b1;
    end

endmodule