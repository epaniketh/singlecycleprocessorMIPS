`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:19:16 11/26/2015
// Design Name:   MIPS_32_Processor_Singl_Cycle
// Module Name:   C:/Xilinx/Examples/Single_Cycle_MIPS_Processor/MIPS_tb.v
// Project Name:  Single_Cycle_MIPS_Processor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS_32_Processor_Singl_Cycle
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MIPS_tb;

	// Inputs
	reg clk;
	reg reset;
	reg enable;

	// Outputs
	wire [31:0] alu_res;

	// Instantiate the Unit Under Test (UUT)
	MIPS_32_Processor_Singl_Cycle uut (
		.clk(clk), 
		.reset(reset), 
		.enable(enable), 
		.alu_res(alu_res)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		enable = 0;
		
		#100;
		reset = 0;
		enable = 1;

        
		// Add stimulus here

	end

	always #1 clk = ~clk;
	
	
      
endmodule

