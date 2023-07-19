`timescale 1ns / 1ps
module Adder_Subtractor(a,b,c,s,cout);
input [3:0]a,b;
input c;
output [3:0]s;
output cout;
wire w0,w1,w2,w3;
wire c0,c1,c2;

xor x1(w0,b[0],c);
fa_df f1(a[0],w0,c,s[0],c0);

xor x2(w1,b[1],c);
fa_df f2(a[1],w1,c0,s[1],c1);

xor x3(w2,b[2],c);
fa_df f3(a[2],w2,c1,s[2],c2);

xor x4(w3,b[3],c);
fa_df f4(a[3],w3,c2,s[3],cout);
endmodule
