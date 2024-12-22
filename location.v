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
// CREATED		"Sun Dec 22 23:01:16 2024"

module location(
	clk,
	rst,
	tik,
	emerg_stop,
	cur_spd,
	total_loc,
	stat_melody,
	section_loc
);


input wire	clk;
input wire	rst;
input wire	tik;
input wire	emerg_stop;
input wire	[3:0] cur_spd;
input wire	[5:0] total_loc;
output wire	stat_melody;
output wire	[3:0] section_loc;

wire	[3:3] section_loc_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_6 = 1;



assign	SYNTHESIZED_WIRE_2 = tik & SYNTHESIZED_WIRE_0;


trigger	b2v_inst12(
	.Din(section_loc_ALTERA_SYNTHESIZED),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_9),
	.Dout(stat_melody));


speed_ticker	b2v_inst14(
	.clk(SYNTHESIZED_WIRE_2),
	.rst(rst),
	.dist_0(total_loc[2]),
	.dist_1(SYNTHESIZED_WIRE_3),
	.dist_2(total_loc[4]),
	.speed(cur_spd),
	.out(SYNTHESIZED_WIRE_4));


shift_register	b2v_inst2(
	.clk(SYNTHESIZED_WIRE_4),
	.rst(SYNTHESIZED_WIRE_5),
	.q(section_loc));
	defparam	b2v_inst2.INIT_VALUE = 1;
	defparam	b2v_inst2.WIDTH = 4;


trigger	b2v_inst4(
	.Din(SYNTHESIZED_WIRE_6),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_9),
	.Dout(SYNTHESIZED_WIRE_8));

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_8 | rst;

assign	SYNTHESIZED_WIRE_9 =  ~rst;


assign	SYNTHESIZED_WIRE_0 =  ~emerg_stop;

assign	SYNTHESIZED_WIRE_3 = total_loc[1] | total_loc[0] | total_loc[3];


endmodule
