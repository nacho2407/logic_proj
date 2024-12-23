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
// CREATED		"Sun Dec 22 22:19:19 2024"

module Engine(
	on_off,
	clk,
	rst_n,
	speed_up,
	speed_down,
	door_oc,
	emerge_stop,
	led5,
	led6,
	door_close_beep,
	current_speed
);


input wire	on_off;
input wire	clk;
input wire	rst_n;
input wire	speed_up;
input wire	speed_down;
input wire	door_oc;
input wire	emerge_stop;
output wire	led5;
output wire	led6;
output wire	door_close_beep;
output wire	[3:0] current_speed;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;

assign	led5 = SYNTHESIZED_WIRE_0;



assign	led6 =  ~SYNTHESIZED_WIRE_0;


LED	b2v_inst1(
	.Din(on_off),
	.CLK(clk),
	.rst_n(rst_n),
	.LedOut(SYNTHESIZED_WIRE_23));

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_24 & speed_down;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_25 & door_oc;


trigger	b2v_inst12(
	.Din(SYNTHESIZED_WIRE_4),
	.CLK(clk),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_18));

assign	SYNTHESIZED_WIRE_13 =  ~door_oc;


trigger	b2v_inst16(
	.Din(SYNTHESIZED_WIRE_5),
	.CLK(clk),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_20));

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_23 & emerge_stop;


Up_Down_Conter	b2v_inst2(
	.up(SYNTHESIZED_WIRE_7),
	.down(SYNTHESIZED_WIRE_8),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_9),
	.a(current_speed));

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_23 & rst_n;

assign	SYNTHESIZED_WIRE_24 =  ~SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_25 & SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_0 = rst_n & SYNTHESIZED_WIRE_23;

assign	door_close_beep = rst_n & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_25 = SYNTHESIZED_WIRE_23 & speed_up;


FifteenIterator	b2v_inst6(
	.clk(clk),
	.rst_n(rst_n),
	.en(SYNTHESIZED_WIRE_20),
	.out1(SYNTHESIZED_WIRE_11),
	.out2(SYNTHESIZED_WIRE_15));
	defparam	b2v_inst6.CNT_GAP = 30;
	defparam	b2v_inst6.CNT_NUM_OUT2 = 15;


trigger	b2v_inst7(
	.Din(SYNTHESIZED_WIRE_21),
	.CLK(clk),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_7));


trigger	b2v_inst8(
	.Din(SYNTHESIZED_WIRE_22),
	.CLK(clk),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_16));


endmodule
