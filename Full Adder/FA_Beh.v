`timescale 1ns / 1ps

module FA1(a,b,c,s,cout);
input a,b,c;
output reg s,cout;
always@(a or b or c)
begin
s=a^b^c;
cout=(a&b)|(b&c)|(c&a);
end
endmodule
