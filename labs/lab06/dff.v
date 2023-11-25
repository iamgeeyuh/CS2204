`timescale 1ns/1ps

module dff(
    input d, clk, rstn,
    output reg q, qn
);

    always @ (posedge clk or negedge rstn) begin
        if (!rstn) begin
            q <= 0;
        end
        else begin
            q <= d;
        end
    end

    assign qn = ~q;

endmodule