`timescale 1ns / 1ps

module ripple_carry_adder(  
input [3:0] ip1,
input [3:0] ip2,
input       carry_in,
output [3:0] sum,
output      carry_out,
output      overflow
    );
    
wire c0_out,c1_out,c2_out;

FullAdder I1(.a(ip1[0]),.b(ip2[0]),.cin(carry_in),.sum(sum[0]),.cout(c0_out));    
FullAdder I2(.a(ip1[1]),.b(ip2[1]),.cin(c0_out),.sum(sum[1]),.cout(c1_out));    
FullAdder I3(.a(ip1[2]),.b(ip2[2]),.cin(c1_out),.sum(sum[2]),.cout(c2_out));    
FullAdder I4(.a(ip1[3]),.b(ip2[3]),.cin(c2_out),.sum(sum[3]),.cout(carry_out));    

assign overflow = c2_out ^ carry_out;

endmodule
