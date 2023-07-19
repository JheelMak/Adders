`timescale 1ns / 1ps

module add_sub_tb;

	reg [3:0] a, b;
	reg c;

	wire [3:0] s;
	wire cout;
	
	integer i,j;

	Adder_Subtractor uut (.a(a), .b(b), .c(c), .s(s), .cout(cout));

	initial begin
		a = 0; b = 0; c = 1;
		for(i=0;i<=15;i=i+1)
		begin
			a=i;	#5;
			for(j=0;j<=15;j=j+1)
			begin
				b=j;	#5;
				$display("A=%b, B=%b, Cin=%b, S=%b, Cout=%b",a,b,c,s,cout);
			end
		end
			
		#5 $finish;
	end
		
      
endmodule

