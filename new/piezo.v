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
// CREATED		"Tue Dec 24 17:41:23 2024"

module piezo(
	reset,
	clock,
	beep,
	door_beep,
	stat_melody,
	door_melody,
	piezo
);


input wire	reset;
input wire	clock;
input wire	beep;
input wire	door_beep;
input wire	stat_melody;
input wire	door_melody;
output wire	piezo;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_18;
wire	[9:0] SYNTHESIZED_WIRE_2;
wire	[9:0] SYNTHESIZED_WIRE_3;
wire	[9:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_10;
wire	[9:0] SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;





error_beep	b2v_inst(
	.reset(SYNTHESIZED_WIRE_0),
	.clock(clock),
	.tick(SYNTHESIZED_WIRE_18),
	.en(SYNTHESIZED_WIRE_5),
	.piano(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_19 =  ~reset;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_10 = ~(SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7);


trigger	b2v_inst14(
	.Din(SYNTHESIZED_WIRE_8),
	.CLK(clock),
	.rst_n(SYNTHESIZED_WIRE_19),
	.Dout(SYNTHESIZED_WIRE_18));


piano	b2v_inst2(
	.clk(clock),
	.rst(SYNTHESIZED_WIRE_10),
	.in_bits(SYNTHESIZED_WIRE_11),
	.divided_clk(piezo));


door_open_beep	b2v_inst4(
	.reset(SYNTHESIZED_WIRE_12),
	.clock(clock),
	.tick4(SYNTHESIZED_WIRE_18),
	.en(SYNTHESIZED_WIRE_6),
	.piano(SYNTHESIZED_WIRE_2));


stat_melodyy	b2v_inst5(
	.reset(SYNTHESIZED_WIRE_14),
	.clock(clock),
	.tick4(SYNTHESIZED_WIRE_18),
	.en(SYNTHESIZED_WIRE_7),
	.piano(SYNTHESIZED_WIRE_3));


piezo_sm	b2v_inst6(
	.reset(reset),
	.clock(clock),
	.beep(beep),
	.door_beep(door_beep),
	.door_melody(door_melody),
	.stat_melody(stat_melody),
	.out_beep(SYNTHESIZED_WIRE_0),
	.out_door(SYNTHESIZED_WIRE_12),
	.out_stat(SYNTHESIZED_WIRE_14));


PNU_CLK_DIV	b2v_inst9(
	.clk(clock),
	.rst_n(SYNTHESIZED_WIRE_19),
	.en(SYNTHESIZED_WIRE_19),
	.div_clk(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst9.cnt_num = 250000;


endmodule
