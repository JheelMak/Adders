`timescale 1ns / 1ps

module ha_tb;
	// Inputs
	reg a,b;

	// Outputs
	wire s, c;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	ha_beh uut (.a(a), .b(b), .s(s), .c(c));

	initial begin
		// Initialize Inputs
		a = 0;b = 0;
		// Wait 100 ns for global reset to finish
		#100;
		for(i=0;i<=3;i=i+1)
		begin
		{a,b}=i; #5;
			$display("a=%b,b=%b,s=%b,c=%b",a,b,s,c);
			end
			#5 $finish;
	end
	
endmodule

