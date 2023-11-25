`timescale 1ns/1ps

module counter_forward(

    input clk, F,
    output reg [3:0] counter

);

    always@(posedge clk) begin
        if (F == 0) begin
            if (counter < 4'd15)
                counter <= counter + 4'd1;
            else  
                counter <= 4'd0;
        end
        else begin
            if (counter > 4'd0)
                counter <= counter - 4'd1;
            else  
                counter <= 4'd15;
        end
    end

endmodule