`timescale 1ns / 1ps
module tb ( );
 reg [3:0] ip1;
 reg [3:0] ip2;
 reg       carry_in;
 wire [3:0] sum;
 wire      carry_out;
 wire      overflow;
 ripple_carry_adder U1 (ip1, ip2, carry_in, sum, carry_out,overflow);
 // assign values to the DUT inputs at various simulation times
 initial
 begin
 ip1<= 4'd1; ip2<= 4'd2; carry_in <= 0;
 #20 ip1<= 4'd4; ip2<= 4'd8; carry_in <= 0;
 #20 ip1<= 4'd3; ip2<= 4'd15; carry_in <= 0;
 #20 ip1<= 4'd5; ip2<= 4'd7; carry_in <= 1;
 #20 ip1<= 4'hF; ip2<= 4'h7; carry_in <= 0;
 #20 ip1<= 4'h3; ip2<= 4'hE; carry_in <= 1;
 #20 ip1<= 4'hF; ip2<= 4'hE; carry_in <= 1;
 #20 ip1<= 4'h7; ip2<= 4'h4; carry_in <= 1;
 #20 ip1<= 4'd3; ip2<= 4'd15; carry_in <= 0;
 end // initial
endmodule