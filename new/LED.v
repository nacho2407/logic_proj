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
// CREATED		"Thu Dec 12 18:42:48 2024"

module LED(
	CLK,
	Din,
	rst_n,
	LedOut
);


input wire	CLK;
input wire	Din;
input wire	rst_n;
output reg	LedOut;

wire	SYNTHESIZED_WIRE_0;





always@(posedge CLK or negedge rst_n)
begin
if (!rst_n)
	begin
	LedOut <= 0;
	end
else
	LedOut <= LedOut ^ SYNTHESIZED_WIRE_0;
end


trigger	b2v_inst4(
	.Din(Din),
	.CLK(CLK),
	.rst_n(rst_n),
	.Dout(SYNTHESIZED_WIRE_0));


endmodule
