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
// CREATED		"Sun Dec 22 21:35:14 2024"

module full_color_led(
	under_limit,
	rst,
	green,
	red
);


input wire	under_limit;
input wire	rst;
output wire	[3:0] green;
output wire	[3:0] red;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_3;




assign	red = {SYNTHESIZED_WIRE_0,SYNTHESIZED_WIRE_0,SYNTHESIZED_WIRE_0,SYNTHESIZED_WIRE_0} & {SYNTHESIZED_WIRE_3,SYNTHESIZED_WIRE_3,SYNTHESIZED_WIRE_3,SYNTHESIZED_WIRE_3};

assign	green = {under_limit,under_limit,under_limit,under_limit} & {SYNTHESIZED_WIRE_3,SYNTHESIZED_WIRE_3,SYNTHESIZED_WIRE_3,SYNTHESIZED_WIRE_3};

assign	SYNTHESIZED_WIRE_3 =  ~rst;

assign	SYNTHESIZED_WIRE_0 =  ~under_limit;


endmodule
