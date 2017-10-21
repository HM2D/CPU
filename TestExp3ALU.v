`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:38 10/27/2015
// Design Name:   ALU
// Module Name:   Y:/Documents/Xilinx/TestExp3ALU.v
// Project Name:  Archlab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestExp3ALU;

	// Inputs
	reg [0:31] A;
	reg [0:31] B;
	reg [0:2] S;

	// Outputs
	wire [0:31] O;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.S(S), 
		.O(O), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		S = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	begin 
	#100 begin
	
   A = 32'd10;
	B = 31'd12;
	S = 3'b010; ///ADD
	
	
	end
	#100 begin
	
   A = 32'd5;
	B = 31'd5;
	S = 3'b110; ///SUB
	
	
	end
	#100 begin
	
   A = 32'd10;
	B = 31'd11;
	S = 3'b111; ///SLT
	
	
	end
	#100 begin
	
   A = 32'd10;
	B = 31'd11;
	S = 3'b000; ///AND
	
	
	end
	#100 begin
	
   A = 32'd10;
	B = 31'd11;
	S = 3'b001; ///OR
	
	
	end
	   end
endmodule

