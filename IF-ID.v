`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:09:52 12/08/2015 
// Design Name: 
// Module Name:    IF-ID 
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
module IFID(clk,AddIn,ImemoryIn,AddOut,ImemoryOut
    );
	 input clk;
input  [0:31] AddIn;
input  [0:31] ImemoryIn;
output reg [0:31] AddOut,ImemoryOut;
initial begin

AddOut = 0;
ImemoryOut = 0;
end


always@(posedge clk)
begin
 AddOut <= AddIn;
 ImemoryOut <= ImemoryIn;
end



endmodule
