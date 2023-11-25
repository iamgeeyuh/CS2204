`timescale 1ns/1ps

module demulti(
    input [1:0] sel, 
    input f,
    output reg a, reg b, reg c, reg d
);

    always @ (sel or f) begin
        a = ((f & ~sel[1]) & ~sel[0]);
        b = ((f & ~sel[1]) & sel[0]);
        c = ((f & sel[1]) & ~sel[0]);
        d = ((f & sel[1]) & sel[0]);
    end

endmodule