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
// CREATED		"Tue Dec 24 03:07:16 2024"

module traffic_light_module(
	light,
	traffic_red,
	traffic_yellow,
	traffic_green
);


input wire	[1:0] light;
output wire	traffic_red;
output wire	traffic_yellow;
output wire	traffic_green;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;




assign	traffic_red = SYNTHESIZED_WIRE_0 & light[0];

assign	traffic_yellow = light[1] & SYNTHESIZED_WIRE_1;

assign	traffic_green = light[1] & light[0];

assign	SYNTHESIZED_WIRE_0 =  ~light[1];

assign	SYNTHESIZED_WIRE_1 =  ~light[0];


endmodule
