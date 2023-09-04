`timescale 1ns / 1ps
module fa_st(A,B,Cin,S,Cout);
input A, B, Cin;
output S, Cout;
wire w1, w2, w3;    
xor x1(w1,A,B);
and x2(w2,A,B);
and a1(w3,w1,Cin);
or o1(Cout,w2,w3);
xor x3(S,w1,Cin); 
endmodule
