`timescale 1ns/1ps

module decoderB(
    input x, clk,
    output reg z
);
    parameter s0 = 4'b0000, s1 = 4'b0001, s2 = 4'b0010, s3 = 4'b0011, s4 = 4'b0100, s5 = 4'b0101, s6 = 4'b0110, s7 = 4'b0111, s8 = 4'b1000, s9 = 4'b1001, s10 = 4'b1010, final = 4'b1011;
    reg [4:0] state = s0;

    always @ (posedge clk) begin
        case(state)
            s0: if (x == 0) begin
                    state <= s4;
                end
                else begin
                    state <= s1;
                end
            s1: if (x == 0) begin
                    state <= s2;
                end
                else begin
                    state <= s1;
                end
            s2: if (x == 0) begin
                    state <= s4;
                end
                else begin
                    state <= s3;
                end
            s3: if (x == 0) begin
                    state <= s7;
                end
                else begin
                    state <= final;
                end
            s4: if (x == 0) begin
                    state <= s4;
                end
                else begin
                    state <= s5;
                end
            s5: if (x == 0) begin
                    state <= s7;
                end
                else begin
                    state <= s6;
                end
            s6: if (x == 0) begin
                    state <= final;
                end
                else begin
                    state <= s1;
                end
            s7: if (x == 0) begin
                    state <= final;
                end
                else begin
                    state <= s3;
                end
            final: state <= s0;
        endcase
    end

    always @ (posedge clk) begin
        case(state)
            s0: z <= 0;
            s1: z <= 0;
            s2: z <= 0;
            s3: z <= 0;
            s4: z <= 0;
            s5: z <= 0;
            s6: z <= 0;
            s7: z <= 0;
            final: z <= 1;
        endcase
    end

endmodule