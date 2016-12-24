`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:23:22 11/26/2015 
// Design Name: 
// Module Name:    mux_2 
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
module mux_2(
    input [31:0] imm,
    input [31:0] read_data2,
    input r,
    output reg [31:0] operand_b
    );

always@(imm & read_data2) begin
operand_b = r ? imm : read_data2;
end

endmodule
