`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2021 09:54:37 PM
// Design Name: 
// Module Name: seven_seg
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

module seven_seg(
 input clk,
 input [3:0] ip1,
 input [3:0] ip2,
 input carry_in,
 output overflow,
 output carry_out,
 output CA,
 output CB,
 output CC,
 output CD,
 output CE,
 output CF,
 output CG,
 output [7:0] AN
 );

 wire [7:0] t_an;
 wire [3:0] sum;
 wire [3:0] temp;
 wire[6:0]T;
 wire[6:0]input1;
 wire[6:0]input2;
 wire[6:0]result;
 
 assign AN = t_an;
 assign {CG,CF,CE,CD,CC,CB,CA} = T[6:0];
 
 seven_seg_controller(clk,overflow,carry_out,sum,result,ip1,ip2,input1,input2,T,temp,t_an);
 decoder4bit I0 (temp,result); 
 decoder3bit I1 (ip1,input1); 
 decoder3bit I2 (ip2,input2);
 ripple_carry_adder I3(.ip1(ip1),.ip2(ip2),.carry_in(carry_in),.sum(sum),.carry_out(carry_out),.overflow(overflow));
 
endmodule
