// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Tue Dec 24 03:07:53 2024"

module clk_div_test(
	clk,
	rst_n,
	en,
	div_clk
);


input wire	clk;
input wire	rst_n;
input wire	en;
output wire	div_clk;






PNU_CLK_DIV	b2v_inst(
	.clk(clk),
	.rst_n(rst_n),
	.en(en),
	.div_clk(div_clk));
	defparam	b2v_inst.cnt_num = 1000;


endmodule
