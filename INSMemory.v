`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:59:01 10/18/2015 
// Design Name: 
// Module Name:    INSMemory 
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
module INSMemory(In,Out,clk);
input [31:0] In;
input clk;
output reg [31:0] Out;
//parameter SIZE = 127;
//reg [0:7] INS [SIZE:0];
//integer i = 0;
//initial begin
reg [31:0] memory [20:0];
parameter n = 20; 
initial 
begin
Out = 0;
$readmemb("code.txt",memory,0);
end;



always @(posedge clk)
begin 
	Out <= memory[In];
end

endmodule
