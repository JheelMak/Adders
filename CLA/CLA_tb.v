`timescale 1ns / 1ps

module CLA_tb;
	reg [3:0] A,B;
	reg Cin;
	wire [3:0] S;
	wire Cout;
	integer i,j;
	
	CarryLookAheadAdder uut (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));


	initial begin
		A = 0; B = 0; Cin = 1;
		#100;
		
      for(i=0;i<=15;i=i+1)
		begin
			A=i;	#5;
			for(j=0;j<=15;j=j+1)
			begin
				B=j;	#5;
				$display("A=%b, B=%b, Cin=%b, S=%b, Cout=%b",A,B,Cin,S,Cout);
			end
			end
			
		#5 $finish;
	end
      
endmodule

