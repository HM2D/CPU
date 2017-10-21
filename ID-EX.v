`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:09 12/08/2015 
// Design Name: 
// Module Name:    ID-EX 
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
module IDEX(clk,RDIn1,RDIn2,SEIn,A,B,IFIDIn,WBIn,MIn,ExIn,WBOut,MOut,ExOut,RDOut1,RDOut2,SEOut,AOut,BOut,IDEXOut
    );
input  clk;
input  [0:2] MIn;
input [0:3] ExIn;
input  [0:1] WBIn;
input  [0:31] IFIDIn,RDIn1,RDIn2,SEIn ;
input  [0:4] A,B;

output reg [0:2] MOut;
output reg[0:3] ExOut;
output reg [0:1] WBOut;
output reg [0:31] IDEXOut,RDOut1,RDOut2,SEOut;
output reg [0:4] AOut,BOut;
initial begin

MOut = 0;
ExOut = 0;
IDEXOut = 0;
RDOut1 = 0;
RDOut2 = 0;
SEOut = 0;
AOut = 0;
BOut = 0;
WBOut = 0;

end
always @(posedge clk)
begin

MOut <= MIn;
ExOut<= ExIn;
WBOut <= WBIn;
IDEXOut <= IFIDIn;
RDOut1 <= RDIn1;
RDOut2 <= RDIn2;
SEOut <= SEIn;
AOut <= A;
BOut <= B;


end
endmodule
