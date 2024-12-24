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
// CREATED		"Thu Dec 12 19:54:40 2024"

module Seven_Segment(
	rst_n,
	tot_loc,
	a,
	b,
	c,
	d,
	e,
	f,
	g
);


input wire	rst_n;
input wire	[5:0] tot_loc;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;

wire	[3:0] loc;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_11 = 0;




d2b	b2v_inst(
	.d0(tot_loc[0]),
	.d1(tot_loc[1]),
	.d2(tot_loc[2]),
	.d3(tot_loc[3]),
	.d4(tot_loc[4]),
	.d5(tot_loc[5]),
	.d6(SYNTHESIZED_WIRE_11),
	.d7(SYNTHESIZED_WIRE_11),
	.d8(SYNTHESIZED_WIRE_11),
	.d9(SYNTHESIZED_WIRE_11),
	.b3(loc[3]),
	.b2(loc[2]),
	.b1(loc[1]),
	.b0(loc[0]));


b2seg_bus	b2v_inst123(
	.b_in(loc),
	.a(SYNTHESIZED_WIRE_10),
	.b(SYNTHESIZED_WIRE_9),
	.c(SYNTHESIZED_WIRE_8),
	.d(SYNTHESIZED_WIRE_7),
	.e(SYNTHESIZED_WIRE_6),
	.f(SYNTHESIZED_WIRE_5),
	.g(SYNTHESIZED_WIRE_4));


assign	a = SYNTHESIZED_WIRE_4 & rst_n;

assign	b = SYNTHESIZED_WIRE_5 & rst_n;

assign	c = SYNTHESIZED_WIRE_6 & rst_n;

assign	d = SYNTHESIZED_WIRE_7 & rst_n;

assign	e = SYNTHESIZED_WIRE_8 & rst_n;

assign	f = SYNTHESIZED_WIRE_9 & rst_n;

assign	g = SYNTHESIZED_WIRE_10 & rst_n;


endmodule
