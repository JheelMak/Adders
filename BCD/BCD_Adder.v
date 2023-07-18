`timescale 1ns / 1ps
module BCD_Adder(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output reg [3:0]s;
output reg cout;
reg [4:0]sum_temp;
always @(a,b,cin)
begin
	sum_temp = a+b+cin;
	if(sum_temp>9)
	begin
		sum_temp = sum_temp + 6;
		cout = 1;
		s = sum_temp[3:0];
	end
	else
	begin
		s=sum_temp;
		cout=0;
	end
end
endmodule
