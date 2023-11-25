`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2021 11:35:25 PM
// Design Name: 
// Module Name: seven_seg_controller
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
module seven_seg_controller(
 input clk,
 input overflow,
 input carry_out,
 input [3:0] sum,
 input [6:0] result,
 input [3:0] ip1,
 input [3:0] ip2,
 input [6:0] input1,
 input [6:0] input2,
 output reg [6:0]T,
 output reg [3:0] temp,
 output reg [7:0] t_an
    );

reg [31:0]Time=32'd0;
reg [2:0]num=3'd0;  
  

always@(posedge clk)
 begin
    if(Time==32'h40000)
    begin
        Time <= 0;
        num <= num + 1'b1;
    end
 
    else
        Time <= Time + 1;
 end

 always@(sum,carry_out,overflow)
 begin
        if((overflow==1 && carry_out==1)||(sum[3]== 1 && overflow==0))
            temp <= (~sum) + 1'b1;
        else
            temp <= sum;
 end
 
 always@(posedge clk)
 begin
     case(num)
        3'b000: 
                begin
                    t_an = 8'b11111110;
                    T = result;
                end
        3'b001: begin
                    t_an = 8'b11111101;
                    if((overflow==1 && carry_out==1)||(sum[3]==1 && overflow==0))
                        T = 7'b0111111;
                    else
                        T = 7'b1111111;
                end
        3'b010: begin 
                    t_an = 8'b11111011; 
                    T = 7'b1111111; 
                end
        3'b011: begin 
                    t_an = 8'b11110111; 
                    T = 7'b1111111;
                end
        3'b100: begin
                    t_an = 8'b11101111;
                    T = input2;
                end
        3'b101: begin
                    t_an = 8'b11011111;
                    if(ip2[3] == 1)
                        T = 7'b0111111;
                    else
                        T = 7'b1111111;
                end
        3'b110: begin
                    t_an = 8'b10111111;
                    T = input1;
                end
        3'b111: begin
                    t_an = 8'b01111111;
                    if(ip1[3] == 1)
                        T = 7'b0111111;
                    else
                        T = 7'b1111111;
                end
    endcase
 end 
   
endmodule
