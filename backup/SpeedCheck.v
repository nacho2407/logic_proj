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
// CREATED		"Thu Dec 12 18:44:40 2024"

module SpeedCheck(
	up,
	down,
	A,
	is_error
);


input wire	up;
input wire	down;
input wire	[3:0] A;
output wire	is_error;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;




assign	is_error = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_2 = A[3] & A[2] & A[1] & A[0];

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_2 & up;

assign	SYNTHESIZED_WIRE_3 =  ~A[3];

assign	SYNTHESIZED_WIRE_4 =  ~A[2];

assign	SYNTHESIZED_WIRE_5 =  ~A[1];

assign	SYNTHESIZED_WIRE_6 =  ~A[0];

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_7 & down;


endmodule
