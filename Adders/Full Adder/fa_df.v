`timescale 1ns / 1ps
module fa_df(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(a&cin);
endmodule
