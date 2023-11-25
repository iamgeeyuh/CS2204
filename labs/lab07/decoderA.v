`timescale 1ns/1ps

module decoderA(
    input x, clk,
    output reg z
);

    parameter s0 = 4'b0000, s1 = 4'b0001, s2 = 4'b0010, s3 = 4'b0011, s4 = 4'b0100, s5 = 4'b0101, s6 = 4'b0110, s7 = 4'b0111, final = 4'b1000;
    reg [4:0] state = s0;

    always @ (posedge clk) begin
        case(state)
            s0: begin
                if (x == 0) begin
                    state <= s0;
                end
                else begin
                    state <= s1;
                end
            end
            s1: begin
                if (x == 0) begin
                    state <= s2;
                end
                else begin
                    state <= s0;
                end
            end
            s2: begin
                if (x == 0) begin
                    state <= s0;
                end
                else begin
                    state <= s3;
                end
            end
            s3: begin
                if (x == 0) begin
                    state <= s0;
                end
                else begin
                    state <= final;
                end
            end
            final: state <= 0;
        endcase
    end

    always @ (posedge clk) begin
        case(state)
            s0: z <= 0;
            s1: z <= 0;
            s2: z <= 0;
            s3: z <= 0;
            final: z <= 1;
        endcase
    end

endmodule

