`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:32:10 11/26/2015 
// Design Name: 
// Module Name:    sign_extender 
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
module sign_extender(
    input [14:0] imm_un,
    output reg [31:0] imm_sign
    );

	always@(imm_un) begin
		if(imm_un[14] == 0)
			imm_sign = {17'h0,imm_un[14:0]};
		else if(imm_un[14] == 1)
			imm_sign = {17'b11111111111111111,imm_un[14:0]};
	end

endmodule
