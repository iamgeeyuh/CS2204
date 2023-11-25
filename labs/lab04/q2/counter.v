`timescale 1ns/1ps

module counter(

    input clk,
    output reg [3:0] counter

);

    always@(posedge clk) begin
        if (counter < 4'd15)
            counter <= counter + 4'd1;
        else  
            counter <= 4'd0;
    end

endmodule