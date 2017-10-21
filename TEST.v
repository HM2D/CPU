`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:16:17 10/18/2015
// Design Name:   MAIN
// Module Name:   Y:/Documents/Xilinx/Archlab1/TEST.v
// Project Name:  Archlab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MAIN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	MAIN uut (
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
	begin
	#100
	clk = ~clk;
	end
      
endmodule

