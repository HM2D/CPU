`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:58 10/20/2015 
// Design Name: 
// Module Name:    MainExperiment2 
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
module MainExperiment2(clk,Ins,WR,WD,RW,RD1,RD2,Out
    );
	 input clk;
input [0:31] Ins;
input [0:4] WR;
input [0:31] WD;
input RW;
output [0:31] RD1,RD2;
output [0:31] Out;
	

	Registers h1(clk,Ins[21:25],Ins[16:20],WR,WD,RW,RD1,RD2);
	 SignExtend h2(Ins[0:15],Out);
	 


endmodule
