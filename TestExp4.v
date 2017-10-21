`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:23:49 11/03/2015
// Design Name:   MainExp4
// Module Name:   Y:/Documents/Xilinx/TestExp4.v
// Project Name:  Archlab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MainExp4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestExp4;

	// Inputs
	reg clk;
	reg [0:31] RD;
	reg [0:31] Alu_Result;
	reg Zero;
	reg Branch;
	reg MW;
	reg MR;

	// Outputs
	wire PCsrc;
	wire [0:31] ReadData;

	// Instantiate the Unit Under Test (UUT)
	MainExp4 uut (.clk(clk),
		.RD(RD), 
		.Alu_Result(Alu_Result), 
		.Zero(Zero), 
		.Branch(Branch), 
		.MW(MW), 
		.MR(MR), 
		.PCsrc(PCsrc), 
		.ReadData(ReadData)
	);

	initial begin
		// Initialize Inputs
		RD = 0;
		clk = 0;
		Alu_Result = 0;
		Zero = 0;
		Branch = 0;
		MW = 0;
		MR = 0;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
	always
	 #100 clk = ~clk;
	 
	always
	
	begin
	#100 begin
	   MW = 1;
		RD = 32'd70;
		Zero = 1;
		Branch = 0;
	   MR = 0;
		Alu_Result = 32'd0;
	
	
	
	end
      #100 begin
		
	   MW = 1;
		RD = 32'd80;
		Zero = 1;
		Branch = 0;
	   MR = 0;
		Alu_Result = 32'd1;
	
	
	
	end
	#100 begin
	
	   MW = 0;
		RD = 32'd80;
		Zero = 1;
		Branch = 1;
	   MR = 1;
		Alu_Result = 32'd0;
	
	
	
	end
	end
      
endmodule

