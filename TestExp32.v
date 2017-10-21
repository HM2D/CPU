`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:59:54 11/03/2015
// Design Name:   MainExp32
// Module Name:   Y:/Documents/Xilinx/TestExp32.v
// Project Name:  Archlab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MainExp32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestExp32;

	// Inputs
	reg [0:1] ALUop;
	reg [0:31] RD1;
	reg [0:31] RD2;
	reg [0:31] SE;

	// Outputs
	wire Zero;
	wire [0:31] Out;
	wire [0:31] Out2;

	// Instantiate the Unit Under Test (UUT)
	MainExp32 uut (
		.ALUop(ALUop), 
		.RD1(RD1), 
		.RD2(RD2), 
		.SE(SE), 
		.Zero(Zero), 
		.Out(Out), 
		.Out2(Out2)
	);

	initial begin
		// Initialize Inputs
		ALUop = 0;
		RD1 = 0;
		RD2 = 0;
		SE = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	
	always
	begin
	#100 begin 
	
			ALUop = 2'b10; // r-type
			RD1 = 32'd5;
			RD2 = 32'd6;
			SE = 32'b00000000000000000000000000100000; //R-TYPE Add
			
	
	end
	#100 begin 
	
			ALUop = 2'b10; 
			RD1 = 32'd5;
			RD2 = 32'd6;
			SE = 32'b00000000000000000000000000100010; //R-TYPE Sub
			
	
	end
	
	#100 begin 
	
			ALUop = 2'b10; 
			RD1 = 32'd5;
			RD2 = 32'd6;
			SE = 32'b00000000000000000000000000100100; //R-TYPE AND
			
	
	end
	
	#100 begin 
	
			ALUop = 2'b10; 
			RD1 = 32'd5;
			RD2 = 32'd6;
			SE = 32'b00000000000000000000000000100101; //R-TYPE or
			
	
	end
	
	#100 begin 
	
			ALUop = 2'b00; 
			RD1 = 32'd5;
			RD2 = 32'd6;
			SE = 32'b00000000000000000000000000xxxxxx; //R-TYPE SLT
			
	
	end
	
	#100 begin 
	
			ALUop = 2'bxx; 
			RD1 = 32'd5;
			RD2 = 32'd6;
			SE = 32'b00000000000000000000000000xxxxxx; //R-TYPE SLT
			
	
	end
	
   end   
      
endmodule

