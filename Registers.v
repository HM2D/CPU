`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:40 10/20/2015 
// Design Name: 
// Module Name:    Registers 
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
module Registers(clk,A,B,WR,WD,RW,RD1,RD2
    );
input [0:4] A,B;
input clk;
input [0:4] WR;
input [0:31] WD;
input RW;
reg [0:31] registers [0:31];
integer i;
output [0:31] RD1,RD2;


initial begin
i = 0;
for(i=0;i<32;i=i+1)
begin
registers[i] = 0;
end
end

assign RD1 = registers[A];
assign RD2 = registers[B];

always@( posedge clk)
begin
if(RW)begin
registers[WR] = WD;
end
end



endmodule
