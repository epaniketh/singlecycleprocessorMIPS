`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:14 11/26/2015 
// Design Name: 
// Module Name:    ALU_32 
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
module ALU_32(
    input [3:0] func,
    input [31:0] op_a,
    input [31:0] op_b,
    output reg [31:0] alu_res
    );

	always@(op_b,op_a,func) begin
/*	case(func)
		0000: alu_res = op_a & op_b;
		0001: alu_res = op_a + op_b;
		0010: alu_res = op_a - op_b;
		0011: alu_res = 32'hZ;
		0100: alu_res = op_a | op_b;
		0111: alu_res = ~ op_a;
		1000: alu_res = op_a ^ op_b;
		1001: alu_res = op_a << op_b;
		1011: alu_res = op_a;
		//default : alu_res = 32'hX;
	endcase */
	if(func == 4'b0000)
	alu_res = op_a & op_b;
	else if (func == 4'b0010)
	alu_res = op_a + op_b;
	else if (func == 4'b0100)
	alu_res = op_a - op_b;
	else if (func == 4'b0110)
	alu_res = 32'hZ;
	else if (func == 4'b1000)
	alu_res = op_a | op_b;
	else if (func == 4'b1010)
	alu_res = ~ op_a;
	else if (func == 4'b1100)
	alu_res = op_a ^ op_b;
	else if (func == 4'b1110)
	alu_res = op_a << op_b;
	else if (func == 4'b0001)
	alu_res = op_a;
	else
	alu_res = 32'bX;
	end 
endmodule
