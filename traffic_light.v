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
// CREATED		"Sun Dec 22 18:22:07 2024"

module traffic_light(
	rst,
	clk,
	emerg_stop,
	door_oc,
	tik,
	section_loc,
	total_loc,
	dbg,
	light
);


input wire	rst;
input wire	clk;
input wire	emerg_stop;
input wire	door_oc;
input wire	tik;
input wire	[3:0] section_loc;
input wire	[5:0] total_loc;
output wire	dbg;
output wire	[1:0] light;

wire	[1:0] light_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_10;
reg	SRFF_inst14;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;

assign	dbg = SYNTHESIZED_WIRE_2;




traffic_lt_sm	b2v_inst(
	.reset(rst),
	.clock(clk),
	.emerg_stop(emerg_stop),
	.section_loc3(section_loc[3]),
	.section_loc0(section_loc[0]),
	.tik(SYNTHESIZED_WIRE_0),
	.light1(SYNTHESIZED_WIRE_17),
	.light0(SYNTHESIZED_WIRE_18)
	);
	defparam	b2v_inst.force_stop = 6;
	defparam	b2v_inst.ready = 3;
	defparam	b2v_inst.run = 4;
	defparam	b2v_inst.stop = 0;
	defparam	b2v_inst.stop_ready = 5;
	defparam	b2v_inst.wait1 = 1;
	defparam	b2v_inst.wait2 = 2;

assign	SYNTHESIZED_WIRE_12 = total_loc[5] | SYNTHESIZED_WIRE_17;


trigger	b2v_inst12(
	.Din(SYNTHESIZED_WIRE_2),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_3),
	.Dout(SYNTHESIZED_WIRE_5));

assign	SYNTHESIZED_WIRE_2 =  ~door_oc;


always@(posedge clk or negedge SYNTHESIZED_WIRE_4)
begin
if (!SYNTHESIZED_WIRE_4)
	begin
	SRFF_inst14 <= 0;
	end
else
	begin
	SRFF_inst14 <= ~SRFF_inst14 & SYNTHESIZED_WIRE_5 | SRFF_inst14 & ~SYNTHESIZED_WIRE_6;
	end
end

assign	SYNTHESIZED_WIRE_4 =  ~rst;

assign	SYNTHESIZED_WIRE_8 = total_loc[0] & tik;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_3 =  ~rst;


assign	SYNTHESIZED_WIRE_10 =  ~total_loc[5];

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_18 & SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_7 = tik & SRFF_inst14;

assign	light_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_12;

assign	light_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_14;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_19 =  ~rst;

assign	light = light_ALTERA_SYNTHESIZED;

endmodule
