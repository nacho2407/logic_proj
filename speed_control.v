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
// CREATED		"Sun Dec 22 18:22:39 2024"

module speed_control(
	clk,
	rst,
	force_stop,
	tik,
	cur_spd,
	light,
	section_loc,
	total_loc,
	emerg_stop,
	beep,
	under_limit,
	spd_limit
);


input wire	clk;
input wire	rst;
input wire	force_stop;
input wire	tik;
input wire	[3:0] cur_spd;
input wire	[1:0] light;
input wire	[3:0] section_loc;
input wire	[5:0] total_loc;
output wire	emerg_stop;
output wire	beep;
output wire	under_limit;
output wire	[3:0] spd_limit;

wire	[3:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;

assign	emerg_stop = SYNTHESIZED_WIRE_7;
assign	spd_limit = SYNTHESIZED_WIRE_0;




n_comp	b2v_inst(
	.a(cur_spd),
	.b(SYNTHESIZED_WIRE_0),
	.gt(SYNTHESIZED_WIRE_11),
	.eq(SYNTHESIZED_WIRE_12),
	.lt(SYNTHESIZED_WIRE_13));


spd_dcision	b2v_inst1(
	.force_stop(SYNTHESIZED_WIRE_1),
	.rst(rst),
	.section_loc(section_loc),
	.total_loc(total_loc),
	.spd_limit(SYNTHESIZED_WIRE_0));

assign	SYNTHESIZED_WIRE_9 = section_loc[0] & SYNTHESIZED_WIRE_2 & light[1];

assign	SYNTHESIZED_WIRE_2 =  ~light[0];

assign	under_limit = SYNTHESIZED_WIRE_15 & SYNTHESIZED_WIRE_16;


speed_control_sm	b2v_inst2(
	.reset(rst),
	.clock(clk),
	.under_limit(SYNTHESIZED_WIRE_16),
	.cur_spd3(cur_spd[3]),
	.cur_spd2(cur_spd[2]),
	.cur_spd1(cur_spd[1]),
	.cur_spd0(cur_spd[0]),
	.tik(tik),
	.emerg_stop(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst2.stable = 0;
	defparam	b2v_inst2.stop = 3;
	defparam	b2v_inst2.warning1 = 1;
	defparam	b2v_inst2.warning2 = 2;

assign	SYNTHESIZED_WIRE_10 = light[0] & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_6 =  ~light[1];


trigger	b2v_inst5(
	.Din(SYNTHESIZED_WIRE_7),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_15),
	.Dout(beep));

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | force_stop;

assign	SYNTHESIZED_WIRE_15 =  ~rst;

assign	SYNTHESIZED_WIRE_14 =  ~SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_12 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14;


endmodule
