`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:41 12/08/2015 
// Design Name: 
// Module Name:    UltiMain 
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
module UltiMain(clk
    );
input clk;
wire [0:31] Out7,Out10,Out11,Out13,Out14,Out18,Out19,ALUResultOut19,PCOut,INSOut,AdderOut1,MUXOut1,Instruction,IFIDOut,Out20,RD1,RD2,IDEXOut,SEOut;
wire ANDOut,Zero,ZeroOut16;
wire [0:4] AOut,BOut,MuxOut16,MUXOut19,Out12;
wire [0:1] WBOut19,WBOut9,WBOut16;
wire [0:2] MOut9,select,MOut16;
wire [0:3] ExOut9;
wire [0:8] ControlOut;
wire [0:31] RDOut1,RDOut2,ALUResultOut16,AddResultOut16,RDOut216;
 
 ///////
 ProgramCounter H1(MUXOut1,PCOut,clk);
 INSMemory H2(PCOut,INSOut,clk);
 Adder H3(PCOut,4,AdderOut1);
 MUX2_1 H4(ALUResultOut16,AdderOut1,ANDOut,MUXOut1);
 IFID H5(clk,AdderOut1,INSOut,IFIDOut,Instruction);
/////
 Registers  H6(clk,Instruction[6:10],Instruction[11:15],MUXOut19,Out20,WBOut19[0],RD1,RD2);
 SignExtend H7(Instruction[0:15],Out7);
 Control_Unit H8(Instruction[0:5],ControlOut);
 IDEX H9(clk,RD1,RD2,Out7,Instruction[16:20],Instruction[11:15],IFIDOut,ControlOut[0:1],ControlOut[2:4],ControlOut[5:8],WBOut9,MOut9,ExOut9,RDOut1,RDOut2,SEOut,AOut,BOut,IDEXOut);
/////
 ShiftLeft2 H10(SEOut,Out10);
 MUX2_1 H11(RDOut2,SEOut,ExOut9[3],Out11);
 Mux2_1_5 H12(AOut,BOut,ExOut9[0],Out12);
 Adder H13(Out10,IDEXOut,Out13);
 ALU H14(RDOut1,Out11,select,Out14,Zero);
 ALUcontrol H15(SEOut[0:5],ExOut9[1:2],select);
 EXMEM H16(clk,MOut9,WBOut9,Out14,Out13,Zero, RDOut2,Out12,MOut16,WBOut16,ALUResultOut16,AddResultOut16,ZeroOut16, RDOut216,MuxOut16);
//////
 AND H17(ZeroOut16,MOut16[0],ANDOut);
 DataMemory H18(clk,MOut16[2],MOut16[1],ALUResultOut16,RDOut216,Out18);
 MEMWB H19(clk,WBOut16,WBOut19,Out18,Out19,ALUResultOut16,ALUResultOut19,MuxOut16,MUXOut19);
 MUX2_1 H20(Out19,ALUResultOut19,WBOut19[1],Out20);
////// 

endmodule
