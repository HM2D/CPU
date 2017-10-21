`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:11 12/08/2015 
// Design Name: 
// Module Name:    EX-MEM 
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
module EXMEM(clk,MIn,WBIn,ALUResult,AddResult,ZeroIn, RDIn2,MuxIn,MOut,WBOut,ALUResultOut,AddResultOut,ZeroOut, RDOut2,MuxOut
    );
input clk;
input  [0:1] WBIn;
input  [0:2] MIn;
input [0:31] AddResult,ALUResult,RDIn2;
input  [0:4] MuxIn;
input ZeroIn;
output reg [0:1] WBOut;
output reg [0:2] MOut;
output reg [0:31] AddResultOut,ALUResultOut,RDOut2;
output reg [0:4] MuxOut;
output reg ZeroOut;

initial begin

WBOut =0;
MOut =0;
AddResultOut =0;
ALUResultOut =0;
RDOut2 =0;
MuxOut =0;
ZeroOut =0;

end

always@(posedge clk)
begin

WBOut <= WBIn;
MOut <= MIn;
AddResultOut <= AddResult;
ALUResultOut <= ALUResult;
RDOut2 <= RDIn2;
MuxOut <= MuxIn;
ZeroOut <= ZeroIn;




end

endmodule
