`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:48 10/18/2015 
// Design Name: 
// Module Name:    MAIN 
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
module MAIN(clk);
 input clk;
 wire [0:31] PCout,AdderOut,MuxOut;
 reg [0:31] PCin;
 wire [0:31]  INSout;
 initial begin
 PCin = 0;
 end
 
 
 ProgramCounter H1(MuxOut,PCout,clk);
 INSMemory H2(PCout,INSout);
 Adder H3(PCout,4,AdderOut);
 MUX2_1 H4(AdderOut,0,1,MuxOut);
 
endmodule
