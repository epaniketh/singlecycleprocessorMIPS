`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:59 11/26/2015 
// Design Name: 
// Module Name:    flop 
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
module p_counter(
    input enable,
    input clk,
    input reset,
  //  input [5:0] d,
    output reg [5:0] q
    );


	reg [5:0] temp = 6'b000000;//reg [31:0] main_addr;
	
//	Instruction_Memory FETCH(.pc(q),.read_data(main_addr));
	always@(posedge clk) begin
	if(reset == 1)
		q = 6'bX;
	else if(enable == 1)
		q = temp;
		temp = temp + 1'b1;
	end
	
endmodule
