`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:28 11/03/2015 
// Design Name: 
// Module Name:    MainExp3-2 
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
module MainExp32(ALUop,RD1,RD2,SE,Zero,Out,Out2
    );

 input [0:31] RD1,RD2;
 input [0:1] ALUop;
 input [0:31] SE;
 output [0:31] Out;
 output [0:31] Out2;
 
 output Zero;
 wire [0:31] Muxout;
wire [0:4] Select;
wire [0:31] ShiftOut;
 
 
 MUX2_1 h1(RD2,SE,1,Muxout);
 ALU h2(RD1,Muxout,Select,Out,Zero);
 ALUcontrol h3(SE[26:31],ALUop,Select);
 ShiftLeft2 h4(SE,ShiftOut);
 Adder h5(1,ShiftOut,Out2);
 


endmodule
