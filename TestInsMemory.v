`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:12 12/22/2015
// Design Name:   INSMemory
// Module Name:   C:/Users/HM2D/Desktop/AR/Archive/TestInsMemory.v
// Project Name:  Archlab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: INSMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestInsMemory;

	// Inputs
	reg [0:31] In;
	reg clock;

	// Outputs
	wire [0:31] Out;

	// Instantiate the Unit Under Test (UUT)
	INSMemory uut (
		.In(In), 
		.Out(Out), 
		.clock(clock)
	);

	initial begin
		// Initialize Inputs
		In = 0;
		clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
	
		// Add stimulus here
		
	end
	always
	 #100 clock = ~clock;
	 
    	always begin
		#100 begin
				In = 0;
				end
				#100 begin
				In = 1;
				end
				#100 begin
				In = 2;
				end
				#100 begin
				In = 3;
				end
				#100 begin
				In = 4;
				end
				#100 begin
				In = 5;
				end
				end
endmodule

