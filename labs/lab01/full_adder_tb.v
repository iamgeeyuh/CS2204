`timescale 1ns/1ps

module full_adder_tb();
    reg a, b, cin;
    wire sum, cout;
        full_adder dut(a, b, cin, sum, cout);
        initial 
        begin
            $monitor("Value of a=%b, b=%b, cin=%b, sum=%b, cout=%b", a,b,cin,sum,cout);
            #0 a=0; b=0; cin=0;
            #10 a=1; b=0; cin=0;
            #5 a=0; b=1; cin=0;
            #15 a=1; b=1; cin=0;
            #20 a=0; b=0; cin=1;
            #10 a=1; b=0; cin=1;
            #5 a=0; b=1; cin=1;
            #10 a=1; b=1; cin=1;
            #10 $finish;
        end
endmodule