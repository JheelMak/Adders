`timescale 1ns / 1ps

module fa_st_tb;

	// Inputs
	reg a,b,cin;

	// Outputs
	wire sum,cout;
	integer i;
	// Instantiate the Unit Under Test (UUT)
	fa_st uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
		#100;
      for(i=0;i<=7;i=i+1)
		begin
			{a,b,cin}=i; #5;
		$display("a=%b,b=%b,c=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		end
		#5 $finish;
	end
      
endmodule

