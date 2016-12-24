`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:37 11/26/2015 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory(
    input [5:0] pc,
   // input [5:0] write_addr,
  //  input [31:0] write_data,
    output reg [31:0] read_data
    );
	reg [31:0]mem[63:0];
	
	initial begin
	mem[0] = 32'h123423232;
	mem[1] = 32'h133234332;
	mem[2] = 32'h142322222;
	mem[3] = 32'h152324222;
	mem[4] = 32'h161142222;
	mem[5] = 32'h122434222;
	mem[6] = 32'h123432432;
	mem[7] = 32'h127434322;
	mem[8] = 32'h128442222;
	mem[9] = 32'h123224255;
	mem[10] = 32'h12322477;
	mem[11] = 32'h12442377;
	mem[12] = 32'h12AB3299;
	mem[13] = 32'h128D3296;
	mem[14] = 32'h12632324;
	mem[15] = 32'h12123211;
	mem[16] = 32'h12524222;
	mem[17] = 32'h12774322;
	mem[18] = 32'h12557522;
	mem[19] = 32'h12345422;
	mem[20] = 32'h12654457;
	mem[21] = 32'h12533488;
	mem[22] = 32'h12553232;
	mem[23] = 32'h12262323;
	mem[24] = 32'h12562328;
	mem[25] = 32'h12542323;
	mem[26] = 32'h12439999;
	mem[27] = 32'h12766667;
	mem[28] = 32'h12866549;
	mem[29] = 32'h12904333;
	mem[30] = 32'h12994333;
	mem[31] = 32'h12543333;
	mem[32] = 32'h12333332;
	mem[33] = 32'h12333444;
	mem[34] = 32'h12553343;
	mem[35] = 32'h12233432;
	mem[36] = 32'h12243234;
	mem[37] = 32'h12243234;
	mem[38] = 32'h12243234;
	mem[39] = 32'h12243234;
	mem[40] = 32'h12243234;
	mem[41] = 32'h12243234;
	mem[42] = 32'h152;
	mem[43] = 32'h142;
	mem[44] = 32'h142;
	mem[45] = 32'h122;
	mem[46] = 32'h182;
	mem[47] = 32'h912;
	mem[48] = 32'h812;
	mem[49] = 32'h142;
	mem[50] = 32'h132;
	mem[51] = 32'h132;
	mem[52] = 32'h122;
	mem[53] = 32'h172;
	mem[54] = 32'h912;
	mem[55] = 32'h012;
	mem[56] = 32'h712;
	mem[57] = 32'h412;
	mem[58] = 32'h212;
	mem[59] = 32'h512;
	mem[60] = 32'h612;
	mem[61] = 32'h612;
	mem[62] = 32'h681;
	mem[63] = 32'h612;

	end
	
	always@(pc) begin
	read_data = mem[pc];
	end	

endmodule
