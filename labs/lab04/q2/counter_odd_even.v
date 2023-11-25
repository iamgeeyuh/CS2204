`timescale 1ns/1ps

module counter_odd_even(

    input clk, F, P,
    output reg [3:0] counter

);
initial begin
    counter = 4'd0;
end
    always@(posedge clk) begin

        if (F == 0) begin // forward

            if (P == 0) begin // even
                if (counter % 4'd2 != 4'd0) begin // if odd
                    //add one
                    if (counter < 4'd15) begin
                        counter = counter + 4'd1;
                    end
                    else begin
                        counter = 4'd0;
                    end
                end
            end

            else begin // odd
                if (counter % 4'd2 == 4'd0) begin //if even
                    //add one
                    counter = counter + 4'd1;
                end
            end

            // 5 

            // add two to maintain odd/even
            if (counter < 4'd14) begin
                counter = counter + 4'd2;
            end
            else if (counter == 4'd14) begin
                counter = 4'd0;
            end
            else begin
                counter = 4'd1;
            end
        end

        else begin // backward

            if (P == 0) begin // even
                if (counter % 4'd2 != 4'd0) begin // if odd
                    counter = counter - 4'd1; // subtract one
                end
            end

            else begin // odd
                if (counter % 4'd2 == 4'd0) begin // if even
                    //subtract one
                    if (counter > 4'd0) begin
                        counter = counter - 4'd1;
                    end
                    else  begin
                        counter = 4'd15;
                    end
                end
            end

            // subtract two to maintain odd/even
            if (counter > 4'd1) begin
                counter <= counter - 4'd2;
            end
            else if (counter == 4'd1) begin
                counter = 4'd15;
            end
            else begin
                counter = 4'd14;
            end
        end
    end

endmodule