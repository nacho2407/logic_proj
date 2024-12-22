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
// CREATED		"Thu Dec 12 21:14:51 2024"

module SpeedDisplay(
	clk,
	rst_n,
	cur_speed,
	spd_limit,
	com8,
	com7,
	com4,
	com3,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com6,
	com5,
	com2,
	com1
);


input wire	clk;
input wire	rst_n;
input wire	[3:0] cur_speed;
input wire	[3:0] spd_limit;
output wire	com8;
output wire	com7;
output wire	com4;
output wire	com3;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com6;
output wire	com5;
output wire	com2;
output wire	com1;

wire	SYNTHESIZED_WIRE_26;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	[3:0] SYNTHESIZED_WIRE_20;
wire	[3:0] SYNTHESIZED_WIRE_21;
wire	[3:0] SYNTHESIZED_WIRE_23;
wire	[3:0] SYNTHESIZED_WIRE_24;
wire	[3:0] SYNTHESIZED_WIRE_25;

assign	com6 = 1;
assign	com5 = 1;
assign	com2 = 1;
assign	com1 = 1;




mx_4bit_2x1	b2v_inst(
	.ce(SYNTHESIZED_WIRE_26),
	.s0(SYNTHESIZED_WIRE_1),
	.s1(SYNTHESIZED_WIRE_2),
	.m_out(SYNTHESIZED_WIRE_23));


Speed_Transform	b2v_inst1(
	.binary_in(cur_speed),
	.ones(SYNTHESIZED_WIRE_1),
	.tens(SYNTHESIZED_WIRE_2));


Speed_Transform	b2v_inst123(
	.binary_in(spd_limit),
	.ones(SYNTHESIZED_WIRE_20),
	.tens(SYNTHESIZED_WIRE_21));


count_4	b2v_inst2(
	.clk(clk),
	.rst_n(rst_n),
	.Q0(SYNTHESIZED_WIRE_26),
	.Q1(SYNTHESIZED_WIRE_27));

assign	SYNTHESIZED_WIRE_5 =  ~SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_10 =  ~SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_15 = SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_16 = SYNTHESIZED_WIRE_26 & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_27 & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_27 & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_6 =  ~SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_8 =  ~SYNTHESIZED_WIRE_27;

assign	com8 =  ~SYNTHESIZED_WIRE_15;

assign	com7 =  ~SYNTHESIZED_WIRE_16;

assign	com4 =  ~SYNTHESIZED_WIRE_17;

assign	com3 =  ~SYNTHESIZED_WIRE_18;



mx_4bit_2x1	b2v_inst5(
	.ce(SYNTHESIZED_WIRE_26),
	.s0(SYNTHESIZED_WIRE_20),
	.s1(SYNTHESIZED_WIRE_21),
	.m_out(SYNTHESIZED_WIRE_24));


mx_4bit_2x1	b2v_inst6(
	.ce(SYNTHESIZED_WIRE_27),
	.s0(SYNTHESIZED_WIRE_23),
	.s1(SYNTHESIZED_WIRE_24),
	.m_out(SYNTHESIZED_WIRE_25));


b2seg_bus	b2v_inst7(
	.b_in(SYNTHESIZED_WIRE_25),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));


endmodule
