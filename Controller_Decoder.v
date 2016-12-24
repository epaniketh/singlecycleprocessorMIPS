`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:11:42 11/26/2015 
// Design Name: 
// Module Name:    Controller_Decoder 
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
module Controller_Decoder(
    input [31:0] main_addr,
//	 input mem_transfer,
	 input write_disable,
    output reg [5:0] rs,
    output reg [5:0] rd,
    output reg [5:0] rt,
    output reg [14:0] imm,
    output reg r,
    output reg [3:0] func,
//	 output reg enable,
	 output reg write_en
    );
	
	always@(main_addr) begin
			rs = main_addr[30:25];
			rt = main_addr[14:9];
			rd = main_addr[24:19];
			imm  = main_addr[14:0];
			r = main_addr[31];
			func = main_addr[18:15];
			write_en = 1;
	end
	
//	always@(mem_transfer) begin
//		enable = 1;
//	end
	
	always@(write_disable) begin
		write_en = 0;
	end
endmodule
