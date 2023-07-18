`timescale 1ns / 1ps
module rca_tb;
	reg [3:0] a,b;
	reg cin;
	
	wire [3:0] s;
	wire cout;
	integer i,j;
	
	RCA uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

	initial begin
		a = 0; b = 0; cin = 0;
		
		for(i=0;i<=15;i=i+1)
		begin
			a=i; #5;
			for(j=0;j<=15;j=j+1)
			begin
				b=j; #5;
				$display("a=%b, b=%b, cin=%b, s=%b, cout=%b",a,b,cin,s,cout);
			end
		end
		#5 $finish;
	end
endmodule

