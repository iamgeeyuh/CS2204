`timescale 1ns / 1ps
module seven_seg(
    input clk,
    output CA,
    output CB,
    output CC,
    output CD,
    output CE,
    output CF,
    output CG,
    output [7:0] AN,
    output reg[3:0]counter=4'd0;
 );
 reg [31:0]Time=32'd0;
 reg[6:0]T;
 always@(posedge clk)
 begin
 if(Time==32'd100000000)
 begin
 Time <= 0;
 if (counter < 9)
 counter <= counter + 1;
 else
 counter <= 0;
 end
 else
 Time <= Time + 1;
 end
 always@(counter)
 begin
 case(counter)
 4'b0000: T = 7'b1000000;
 4'b0001: T = 7'b1111001;
 4'b0010: T = 7'b0100100;
 4'b0011: T = 7'b0110000;
 4'b0100: T = 7'b0011001;
 4'b0101: T = 7'b0010010;
 4'b0110: T = 7'b0000010;
 4'b0111: T = 7'b1111000;
 4'b1000: T = 7'b0000000;
 4'b1001: T = 7'b0011000;
 endcase
 end
 assign AN = 8'b11111110;
 assign {CG,CF,CE,CD,CC,CB,CA} = T[6:0];
endmodule