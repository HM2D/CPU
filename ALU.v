`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:20:24 10/27/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A,B,S,O,Zero
    );
input [0:31] A,B;
input [0:2] S;
output  reg[0:31] O;
output reg Zero;


always@(S)
begin
case (S)
 3'b010: O <= A+B;
 3'b110: O <= A-B;
 3'b000: O <= A&B;
 3'b001: O <= A|B;
 3'b111: O <= (A>B) ? 0:1;
 
endcase
if(O==0)begin
 Zero = 1;
 end
 else Zero = 0;

end







endmodule
