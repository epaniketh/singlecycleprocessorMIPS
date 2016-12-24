`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:02:22 11/26/2015 
// Design Name: 
// Module Name:    MIPS_32_Processor_Singl_Cycle 
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
module MIPS_32_Processor_Singl_Cycle(
    input clk,
    input reset,
	 input enable,
    output reg [31:0] alu_res
    );
	wire [5:0] q;
	wire [31:0] main_addr;
	wire write_dis, write_en;
	wire r;
	wire [5:0] rs,rt,rd;
	wire [14:0] imm;
	wire [3:0] func;
	wire [31:0] write_data,read_data1,read_data2,operand_b,imm_32;
	

p_counter START(.clk(clk),.reset(reset),.enable(enable),.q(q));
Instruction_Memory FETCH(.pc(q),.read_data(main_addr));
Controller_Decoder DECODE(.main_addr(main_addr),.write_disable(write_dis),.write_en(write_en),.r(r),.rs(rs),.rt(rt),.rd(rd),.imm(imm),.func(func));
Register_File READ(.read_addr1(rs),.read_addr2(rt),.read_data1(read_data1),.read_data2(read_data2),.write_enable(write_en),.write_disable(write_dis),.write_addr(rd),.write_data(write_data),.clk(clk));
mux_2 SELECTOR(.read_data2(read_data2),.r(r),.imm(imm_32),.operand_b(operand_b));
sign_extender S(.imm_un(imm),.imm_sign(imm_32));
ALU_32 alu(.func(func),.op_a(read_data1),.op_b(operand_b),.alu_res(write_data));

always@(write_data) begin
alu_res = write_data;
end

endmodule
