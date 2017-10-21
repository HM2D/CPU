`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:27 10/20/2015
// Design Name:   MainExperiment2
// Module Name:   Y:/Documents/Xilinx/TestEx2.v
// Project Name:  Archlab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MainExperiment2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestEx2;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	MainExperiment2 uut (
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
	#100 clk = ~clk;
      end
endmodule

