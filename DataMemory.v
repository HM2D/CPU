`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:26 11/03/2015 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(clk,MW,MR,A,WD,RD);
input clk;
input MW,MR;
input [31:0] WD;
input [31:0] A;
output reg [31:0] RD;
reg [31:0] memory [255:0];
integer i = 0;
initial begin
for(i=0;i<256;i=i+1)
 begin
 memory[i] = 12;
 end
 
assign RD =  (MR)  ? memory[A]:32'dzzz;
 
end


always @(posedge clk)
begin 
 if (MW) begin
 memory[A] <= WD;
 end
end

endmodule