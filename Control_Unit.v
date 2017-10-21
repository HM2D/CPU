`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:21:28 11/10/2015 
// Design Name: 
// Module Name:    Control_Unit 
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
module Control_Unit(
    input [0:5]opcode,
	 output reg [0:8]control
	
	 );
		reg [0:8] tempControl;
	initial
	begin
	assign control = {tempControl[3],tempControl[2],tempControl[6],tempControl[4],tempControl[5],tempControl[0],tempControl[7:8],tempControl[1]};
	 end
	 
	 always @ ( opcode )
	 begin 
	 case ( opcode )
	 6'b000000 : tempControl <= 9'b100100010 ;
	 6'b100011 : tempControl <= 9'b011110000 ; //changed
	 6'b101011 : tempControl <= 9'b010001000 ;
	 6'b000100 : tempControl <= 9'b000000101 ;
	 6'b100000 : tempControl <= 9'b000000000 ;
	 endcase
	 
	 
	 
end
	
	 
endmodule
