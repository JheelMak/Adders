`timescale 1ns / 1ps
module ha_beh(a,b,s,c);
input a,b;
output reg s,c;
always@(*)
begin
	{c,s}=a+b;
end
endmodule