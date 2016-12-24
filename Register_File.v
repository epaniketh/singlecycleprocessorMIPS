`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:19:06 11/26/2015 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(
    input [5:0] read_addr1,
    input [5:0] read_addr2,
	 input write_enable,
    output reg [31:0] read_data1,
    output reg [31:0] read_data2,
    input [31:0] write_data,
    input [5:0] write_addr,
    output reg write_disable,
    input clk
    );
	 
	 reg [31:0]array[63:0];
	// reg count = 0;
	 
	 initial begin
	 array[0] = 32'h1675;
	 array[1] = 32'h1342;
	 array[2] = 32'h121453;
	 array[3] = 32'h154353;
	 array[4] = 32'h3545341;
	 array[5] = 32'h1343;
	 array[6] = 32'h134543;
	 array[7] = 32'h1565;
	 array[8] = 32'h156;
	 array[9] = 32'h13;
	 array[10] = 32'h133;
	 array[11] = 32'h13;
	 array[12] = 32'h135345;
	 array[13] = 32'h145354;
	 array[14] = 32'h134534;
	 array[15] = 32'h13534;
	 array[16] = 32'h13543;
	 array[17] = 32'h13453;
	 array[18] = 32'h132423;
	 array[19] = 32'h132432;
	 array[20] = 32'h132423;
	 array[21] = 32'h1345;
	 array[22] = 32'h1443;
	 array[23] = 32'h14353;
	 array[24] = 32'h1435364;
	 array[25] = 32'h15646;
	 array[26] = 32'h1544;
	 array[27] = 32'h15646;
	 array[28] = 32'h145654;
	 array[29] = 32'h156546;
	 array[30] = 32'h14564654;
	 array[31] = 32'h1543543;
	 array[32] = 32'h1353545;
	 array[33] = 32'h16465;
	 array[34] = 32'h1435;
	 array[35] = 32'h1544354;
	 array[36] = 32'h1345566;
	 array[37] = 32'h1345;
	 array[38] = 32'h1;
	 array[39] = 32'h1;
	 array[40] = 32'h1;
	 array[41] = 32'h1;
	 array[42] = 32'h1;
	 array[43] = 32'h1;
	 array[44] = 32'h1;
	 array[45] = 32'h1;
	 array[46] = 32'h1;
	 array[47] = 32'h1;
	 array[48] = 32'h1;
	 array[49] = 32'h1;
	 array[50] = 32'h1;
	 array[51] = 32'h1;
	 array[52] = 32'h1;
	 array[53] = 32'h1;
	 array[54] = 32'h1;
	 array[55] = 32'h1;
	 array[56] = 32'h1;
	 array[57] = 32'h1;
	 array[58] = 32'h1;
	 array[59] = 32'h1;
	 array[60] = 32'h1;
	 array[61] = 32'h1;
	 array[62] = 32'h1;
	 array[63] = 32'h1;
	 end
	 always@(read_addr1 & read_addr2) begin
	 read_data1 = array[read_addr1];
	 read_data2 = array[read_addr2];
	 end
	
	always@(negedge clk) begin
		if(write_enable == 1) begin
			array[write_addr] = write_data;
			write_disable = 0;
		end
	end
	
endmodule
