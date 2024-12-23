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
// CREATED		"Thu Dec 12 18:43:52 2024"

module Up_Down_Conter(
	clk,
	rst_n,
	up,
	down,
	a
);


input wire	clk;
input wire	rst_n;
input wire	up;
input wire	down;
output wire	[3:0] a;

reg	[3:0] a_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_25;





always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	a_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
	a_ALTERA_SYNTHESIZED[0] <= a_ALTERA_SYNTHESIZED[0] ^ SYNTHESIZED_WIRE_0;
end


always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	a_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
	a_ALTERA_SYNTHESIZED[1] <= a_ALTERA_SYNTHESIZED[1] ^ SYNTHESIZED_WIRE_1;
end

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_27 & down;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_28 & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_4 =  ~a_ALTERA_SYNTHESIZED[0];

assign	SYNTHESIZED_WIRE_31 = SYNTHESIZED_WIRE_29 & a_ALTERA_SYNTHESIZED[0];

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_30 | SYNTHESIZED_WIRE_31;

assign	SYNTHESIZED_WIRE_33 = SYNTHESIZED_WIRE_31 & a_ALTERA_SYNTHESIZED[1];

assign	SYNTHESIZED_WIRE_11 =  ~a_ALTERA_SYNTHESIZED[1];


always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	a_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
	a_ALTERA_SYNTHESIZED[2] <= a_ALTERA_SYNTHESIZED[2] ^ SYNTHESIZED_WIRE_9;
end

assign	SYNTHESIZED_WIRE_32 = SYNTHESIZED_WIRE_30 & SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_32 | SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_18 = SYNTHESIZED_WIRE_33 & a_ALTERA_SYNTHESIZED[2];

assign	SYNTHESIZED_WIRE_16 =  ~a_ALTERA_SYNTHESIZED[2];

assign	SYNTHESIZED_WIRE_17 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18;


always@(posedge clk or negedge rst_n)
begin
if (!rst_n)
	begin
	a_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
	a_ALTERA_SYNTHESIZED[3] <= a_ALTERA_SYNTHESIZED[3] ^ SYNTHESIZED_WIRE_19;
end

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_20 & SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_20 =  ~SYNTHESIZED_WIRE_29;


SpeedCheck	b2v_inst6123(
	.up(up),
	.down(down),
	.A(a_ALTERA_SYNTHESIZED),
	.is_error(SYNTHESIZED_WIRE_25));

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_28 | SYNTHESIZED_WIRE_29;

assign	SYNTHESIZED_WIRE_27 =  ~SYNTHESIZED_WIRE_25;

assign	SYNTHESIZED_WIRE_29 = SYNTHESIZED_WIRE_27 & up;

assign	a = a_ALTERA_SYNTHESIZED;

endmodule
