`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:26 10/27/2015 
// Design Name: 
// Module Name:    Mux2_1_5 
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
module Mux2_1_5(A,B,S,O
    );
input [0:4] A,B;
input S;
output [0:4] O;

assign O = S? A:B;


endmodule
