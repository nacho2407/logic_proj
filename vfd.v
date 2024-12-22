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
// CREATED		"Sun Dec 22 23:00:17 2024"

module vfd(
	clk,
	rst,
	section_loc,
	total_loc,
	vfd_e,
	vfd_rs,
	vfd_rw,
	vfd_data
);


input wire	clk;
input wire	rst;
input wire	[3:0] section_loc;
input wire	[5:0] total_loc;
output wire	vfd_e;
output wire	vfd_rs;
output wire	vfd_rw;
output wire	[7:0] vfd_data;

wire	SYNTHESIZED_WIRE_0;
wire	[127:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;





stt_name	b2v_inst(
	.section_loc(section_loc),
	.total_loc(total_loc),
	.out_ascii(SYNTHESIZED_WIRE_1));


text_lcd	b2v_inst1(
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_0),
	.st_name(SYNTHESIZED_WIRE_1),
	.vfd_e(vfd_e),
	.vfd_rs(vfd_rs),
	.vfd_rw(vfd_rw),
	.vfd_data(vfd_data));


trigger	b2v_inst2(
	.Din(SYNTHESIZED_WIRE_2),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_3),
	.Dout(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_2 = section_loc[1] | section_loc[2];

assign	SYNTHESIZED_WIRE_0 = rst | SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_3 =  ~rst;


endmodule
