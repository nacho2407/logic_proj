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
// CREATED		"Mon Dec 23 21:21:21 2024"

module StepMotor(
	clk,
	rst_n,
	cur_speed,
	motor
);


input wire	clk;
input wire	rst_n;
input wire	[3:0] cur_speed;
output wire	[3:0] motor;

wire	SYNTHESIZED_WIRE_0;





MY_CLK_DIV2	b2v_inst(
	.clk(clk),
	.rst_n(rst_n),
	.speed(cur_speed),
	.div_clk(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst.input_num = 10000;


Ring_Counter	b2v_inst2(
	.clk(SYNTHESIZED_WIRE_0),
	.ABCD(motor));


endmodule
