`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:54 11/03/2015 
// Design Name: 
// Module Name:    ALUcontrol 
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
module ALUcontrol(funct,alu_op,select
    );

 input [0:5] funct;
 input [0:1] alu_op;
 output reg [0:2] select;
 
 
  always @(alu_op, funct) begin
      if(alu_op ==2)
		begin  
		  case(funct)
				32: select<=2; // add
            34: select<=6; //subtract
            36: select<=0; // and
            37: select<=1; //OR
				42: select<=7; //slt
				default: select <= 3'bzz;
            endcase
				end
		else 
		case(alu_op)
				0: select<=2;
				1: select<=6;
				default: select <= 2'bzz;
				endcase
		  
end 

endmodule
