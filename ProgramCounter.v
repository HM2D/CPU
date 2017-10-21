`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:52 10/18/2015 
// Design Name: 
// Module Name:    ProgramCounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ProgramCounter(PCin,PCout,clk
    );
	input [0:31] PCin;
	input clk;
	output reg[0:31] PCout;
	initial begin
	PCout = 0;
	
	end
	
	always @(posedge clk)
	begin
	
	PCout <= PCin;
	
	end
	


endmodule
