`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:13 12/08/2015 
// Design Name: 
// Module Name:    MEM-WB 
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
module MEMWB(clk,WBIn,WBOut,RDIn,RDOut,ALUResult,ALUResultOut,MUXIn,MUXOut);
input clk;
input [0:4] MUXIn;
input [0:1] WBIn;
input [0:31] ALUResult,RDIn;

output reg [0:4] MUXOut;
output reg [0:1] WBOut;
output reg [0:31] ALUResultOut,RDOut;
initial begin

MUXOut =0;
WBOut =0;
ALUResultOut =0;
RDOut =0;

end
always@(posedge clk)
begin

MUXOut <= MUXIn;
WBOut <= WBIn;
ALUResultOut <= ALUResult;
RDOut <= RDIn;




end

endmodule
