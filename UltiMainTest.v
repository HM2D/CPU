`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:54 12/22/2015
// Design Name:   UltiMain
// Module Name:   C:/Users/HM2D/Desktop/AR/Archive/UltiMainTest.v
// Project Name:  Archlab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UltiMain
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module UltiMainTest;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	UltiMain uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
	end
	
	always
	 #100 clk = ~clk;
	 
	 
      
endmodule

