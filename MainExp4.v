`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:43 11/03/2015 
// Design Name: 
// Module Name:    MainExp4 
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
module MainExp4(clk,RD,Alu_Result,Zero,Branch,MW,MR,PCsrc,ReadData
    );
	 input clk;
input [0:31] Alu_Result,RD;
input Zero,Branch,MW,MR;
output  [0:31] ReadData;
output PCsrc;

DataMemory DM(clk,MW,MR,Alu_Result,RD,ReadData);
AND H1(Zero,Branch,PCsrc);


endmodule
