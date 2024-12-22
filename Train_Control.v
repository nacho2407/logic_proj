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
// CREATED		"Thu Dec 12 18:46:08 2024"

module Train_Control(
	clk,
	rst_n,
	force_open,
	A_C,
	O_C,
	eng_on,
	current_speed,
	door,
	door_melody,
	A_C_LED,
	door_beep
);


input wire	clk;
input wire	rst_n;
input wire	force_open;
input wire	A_C;
input wire	O_C;
input wire	eng_on;
input wire	[3:0] current_speed;
output wire	door;
output wire	door_melody;
output wire	A_C_LED;
output wire	door_beep;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;




assign	SYNTHESIZED_WIRE_10 =  ~current_speed[0];

assign	door_beep = SYNTHESIZED_WIRE_0 & rst_n;

assign	SYNTHESIZED_WIRE_14 = A_C & eng_on;


trigger	b2v_inst123(
	.Din(SYNTHESIZED_WIRE_1),
	.CLK(clk),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_7));

assign	SYNTHESIZED_WIRE_8 =  ~SYNTHESIZED_WIRE_19;


LED	b2v_inst19(
	.Din(SYNTHESIZED_WIRE_3),
	.CLK(clk),
	.rst_n(rst_n),
	.LedOut(SYNTHESIZED_WIRE_20));

assign	SYNTHESIZED_WIRE_11 =  ~current_speed[1];

assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_20;


trigger	b2v_inst23(
	.Din(SYNTHESIZED_WIRE_20),
	.CLK(clk),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_16 = force_open & eng_on;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_8 & O_C & eng_on;

assign	SYNTHESIZED_WIRE_12 =  ~current_speed[2];

assign	SYNTHESIZED_WIRE_3 = O_C & eng_on & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_13 =  ~current_speed[3];

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	A_C_LED = SYNTHESIZED_WIRE_14 & rst_n;

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_16;

assign	door = SYNTHESIZED_WIRE_17 & rst_n;

assign	door_melody = SYNTHESIZED_WIRE_18 & eng_on & rst_n;


endmodule
