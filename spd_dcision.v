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
// CREATED		"Sun Dec 22 20:13:23 2024"

module spd_dcision(
	rst,
	force_stop,
	section_loc,
	total_loc,
	spd_limit
);


input wire	rst;
input wire	force_stop;
input wire	[3:0] section_loc;
input wire	[5:0] total_loc;
output wire	[3:0] spd_limit;

wire	[3:0] spd_limit_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_10;




assign	SYNTHESIZED_WIRE_14 = total_loc[4] & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_5 = rst | force_stop;

assign	spd_limit_ALTERA_SYNTHESIZED[3] = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_2;

assign	spd_limit_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_13 & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_13 =  ~SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_12 =  ~section_loc[3];


assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_6 = total_loc[1] | total_loc[3] | total_loc[0];

assign	SYNTHESIZED_WIRE_8 = total_loc[2] | section_loc[3];

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_14;


assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_14;

assign	spd_limit = spd_limit_ALTERA_SYNTHESIZED;
assign	spd_limit_ALTERA_SYNTHESIZED[0] = 0;
assign	spd_limit_ALTERA_SYNTHESIZED[1] = 0;

endmodule
