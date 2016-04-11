`timescale 1ns / 1ps


module test;

	// Inputs
	reg X4;
	reg X3;
	reg X2;
	reg X1;
	reg X0;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.X4(X4), 
		.X3(X3), 
		.X2(X2), 
		.X1(X1), 
		.X0(X0), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		X4 = 0;
		X3 = 0;
		X2 = 0;
		X1 = 0;
		X0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
	#10;
	{X4,X3,X2,X1,X0}={X4,X3,X2,X1,X0}+1;
	
	end
      
endmodule

