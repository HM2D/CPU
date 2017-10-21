`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:24 10/27/2015 
// Design Name: 
// Module Name:    ShiftLeft2 
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
module ShiftLeft2(In,Out
    );
	 
	 input [0:31] In;
	 output [0:31] Out;
	 
	 
	assign Out = In<<2;
	


endmodule
