`timescale 1ns / 1ps

module BCD_TB;

	reg [3:0] a, b;
	reg cin;

	wire [3:0] s;
	wire cout;
	
	BCD_Adder uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

	initial begin
		a = 0; b = 0; cin = 0;

		#5 a=0101; b=0110;
		#5 a=0011; b=0001;
		#5 a=1001; b=0100;
		#5 a=0011; b=1001;
		#5 a=0100; b=0001;
	end
      
endmodule

