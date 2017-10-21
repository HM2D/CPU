`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:53:14 10/18/2015 
// Design Name: 
// Module Name:    MUX2_1 
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
module MUX2_1(A,B,S,O
    );
	 input [0:31] A,B;
	 output [0:31] O;
	 input S;
	 
assign	O = S ? A:B;
	 
	 
	 


endmodule
