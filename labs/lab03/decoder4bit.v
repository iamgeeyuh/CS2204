`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2021 11:31:31 PM
// Design Name: 
// Module Name: decoder4bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder4bit(
input [3:0] ip,
output reg [6:0] op
    );
    
 always@(ip)
 begin
     case(ip)
        4'b0000: op = 7'b1000000;
        4'b0001: op = 7'b1111001;
        4'b0010: op = 7'b0100100;
        4'b0011: op = 7'b0110000;
        4'b0100: op = 7'b0011001;
        4'b0101: op = 7'b0010010;
        4'b0110: op = 7'b0000010;
        4'b0111: op = 7'b1111000;
        4'b1000: op = 7'b0000000;
        4'b1001: op = 7'b0010000;
        4'b1010: op = 7'b0001000;
        4'b1011: op = 7'b0000011;
        4'b1100: op = 7'b1000110;
        4'b1101: op = 7'b0100001;
        4'b1110: op = 7'b0000110;
        4'b1111: op = 7'b0001110;
    endcase
 end    
    
endmodule
