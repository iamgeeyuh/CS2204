`timescale 1ns/1ps

module addern_tb();
    reg cin;
    reg [15:0] x, y;
    wire [15:0] sum;
    wire cout;
    addern t1 (cin, x, y, sum, cout);
    initial begin
        x <= 0; y <= 0; cin <= 0;
        #20 x <= 0; y <= 10; cin <= 0;
        #20 x <= 10; y <= 10; cin <= 0;
        #20 x <= 10; y <= 10; cin <= 1;
        #20 x <= 16'hFFF0; y <= 16'hF; cin <= 0;
        #20 x <= 16'hFFF0; y <= 16'hF; cin <= 1;
    end
endmodule