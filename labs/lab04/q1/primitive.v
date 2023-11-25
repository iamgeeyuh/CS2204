`timescale 1ns/1ps

module decoder_p(

    input a, b, c,
    output z0, z1, z2, z3, z4, z5, z6, z7

);
    wire a_not, b_not, c_not;

    not U1(a_not, a);
    not U2(b_not, b);
    not U3(c_not, c);

    and U4(z0, a_not, b_not, c_not);
    and U5(z1, a, b_not, c_not);
    and U6(z2, a_not, b, c_not);
    and U7(z3, a, b, c_not);
    and U8(z4, a_not, b_not, c);
    and U9(z5, a, b_not, c);
    and U10(z6, a_not, b, c);
    and U11(z7, a, b, c);

endmodule