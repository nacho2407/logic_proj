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
// CREATED		"Sun Dec 22 18:06:59 2024"

module integration_test(
	clk,
	rst,
	key_eng_on_off,
	key_speed_up,
	key_speed_down,
	dip_force_open,
	dip_ac_on_off,
	key_door_open_close,
	dip_force_stop,
	led_power_off,
	led_power_on,
	led_door_open,
	led_ac_on,
	traffic_red,
	traffic_yellow,
	traffic_green,
	vfd_e,
	vfd_rs,
	vfd_rw,
	eight_seg_digit,
	eight_seg_seven,
	full_color_green,
	full_color_red,
	led_section_loc,
	seven_seg,
	step_motor,
	vfd_data
);


input wire	clk;
input wire	rst;
input wire	key_eng_on_off;
input wire	key_speed_up;
input wire	key_speed_down;
input wire	dip_force_open;
input wire	dip_ac_on_off;
input wire	key_door_open_close;
input wire	dip_force_stop;
output wire	led_power_off;
output wire	led_power_on;
output wire	led_door_open;
output wire	led_ac_on;
output wire	traffic_red;
output wire	traffic_yellow;
output wire	traffic_green;
output wire	vfd_e;
output wire	vfd_rs;
output wire	vfd_rw;
output wire	[7:0] eight_seg_digit;
output wire	[6:0] eight_seg_seven;
output wire	[3:0] full_color_green;
output wire	[3:0] full_color_red;
output wire	[3:0] led_section_loc;
output wire	[6:0] seven_seg;
output wire	[3:0] step_motor;
output wire	[7:0] vfd_data;

wire	[1:0] dbg_bus;
wire	[7:0] eight_seg_digit_ALTERA_SYNTHESIZED;
wire	[6:0] eight_seg_seven_ALTERA_SYNTHESIZED;
wire	[6:0] seven_seg_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_52;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_54;
wire	SYNTHESIZED_WIRE_55;
wire	[3:0] SYNTHESIZED_WIRE_56;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_9;
wire	[3:0] SYNTHESIZED_WIRE_57;
wire	[5:0] SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_59;
wire	[1:0] SYNTHESIZED_WIRE_60;
wire	SYNTHESIZED_WIRE_61;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_38;
wire	SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_43;
wire	[3:0] SYNTHESIZED_WIRE_45;

assign	led_power_on = SYNTHESIZED_WIRE_23;
assign	led_door_open = SYNTHESIZED_WIRE_59;
assign	led_section_loc = SYNTHESIZED_WIRE_57;



assign	SYNTHESIZED_WIRE_53 =  ~rst;


trigger	b2v_inst(
	.Din(SYNTHESIZED_WIRE_0),
	.CLK(SYNTHESIZED_WIRE_52),
	.rst_n(SYNTHESIZED_WIRE_53),
	.Dout(SYNTHESIZED_WIRE_54));


location	b2v_inst1(
	.rst(rst),
	.clk(SYNTHESIZED_WIRE_52),
	.tik(SYNTHESIZED_WIRE_54),
	.emerg_stop(SYNTHESIZED_WIRE_55),
	.cur_spd(SYNTHESIZED_WIRE_56),
	.stat_melody(SYNTHESIZED_WIRE_39),
	
	
	.section_loc(SYNTHESIZED_WIRE_57),
	.total_loc(SYNTHESIZED_WIRE_58));

assign	SYNTHESIZED_WIRE_61 =  ~rst;


full_color_led	b2v_inst12(
	.under_limit(SYNTHESIZED_WIRE_7),
	.rst(rst),
	.green(full_color_green),
	.red(full_color_red));

assign	SYNTHESIZED_WIRE_15 =  ~rst;


assign	SYNTHESIZED_WIRE_22 =  ~rst;


StepMotor	b2v_inst18(
	.clk(SYNTHESIZED_WIRE_52),
	.rst_n(SYNTHESIZED_WIRE_9),
	.cur_speed(SYNTHESIZED_WIRE_56),
	.motor(step_motor));


vfd	b2v_inst2(
	.clk(SYNTHESIZED_WIRE_52),
	.rst(rst),
	.section_loc(SYNTHESIZED_WIRE_57),
	.total_loc(SYNTHESIZED_WIRE_58),
	.vfd_e(vfd_e),
	.vfd_rs(vfd_rs),
	.vfd_rw(vfd_rw),
	.vfd_data(vfd_data));


Engine	b2v_inst20(
	.clk(SYNTHESIZED_WIRE_52),
	.rst_n(SYNTHESIZED_WIRE_15),
	.on_off(key_eng_on_off),
	.speed_up(key_speed_up),
	.speed_down(key_speed_down),
	.door_oc(SYNTHESIZED_WIRE_59),
	.emerge_stop(SYNTHESIZED_WIRE_55),
	.led5(SYNTHESIZED_WIRE_23),
	.led6(led_power_off),
	.door_close_beep(SYNTHESIZED_WIRE_36),
	.current_speed(SYNTHESIZED_WIRE_56));


traffic_light_module	b2v_inst26(
	.light(SYNTHESIZED_WIRE_60),
	.traffic_red(traffic_red),
	.traffic_yellow(traffic_yellow),
	.traffic_green(traffic_green));




PNU_CLK_DIV	b2v_inst5(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_61),
	.en(SYNTHESIZED_WIRE_61),
	.div_clk(SYNTHESIZED_WIRE_52));
	defparam	b2v_inst5.cnt_num = 1000;


Train_Control	b2v_inst6(
	.clk(SYNTHESIZED_WIRE_52),
	.rst_n(SYNTHESIZED_WIRE_22),
	.force_open(dip_force_open),
	.A_C(dip_ac_on_off),
	.O_C(key_door_open_close),
	.eng_on(SYNTHESIZED_WIRE_23),
	.current_speed(SYNTHESIZED_WIRE_56),
	.door(SYNTHESIZED_WIRE_59),
	.door_melody(SYNTHESIZED_WIRE_37),
	.A_C_LED(led_ac_on),
	.door_beep(SYNTHESIZED_WIRE_38));


speed_control	b2v_inst7(
	.clk(SYNTHESIZED_WIRE_52),
	.rst(rst),
	.force_stop(dip_force_stop),
	.tik(SYNTHESIZED_WIRE_54),
	.cur_spd(SYNTHESIZED_WIRE_56),
	.light(SYNTHESIZED_WIRE_60),
	.section_loc(SYNTHESIZED_WIRE_57),
	.total_loc(SYNTHESIZED_WIRE_58),
	.emerg_stop(SYNTHESIZED_WIRE_55),
	.beep(SYNTHESIZED_WIRE_35),
	.under_limit(SYNTHESIZED_WIRE_7),
	.spd_limit(SYNTHESIZED_WIRE_45));


PNU_CLK_DIV	b2v_inst8(
	.clk(SYNTHESIZED_WIRE_52),
	.rst_n(SYNTHESIZED_WIRE_53),
	.en(SYNTHESIZED_WIRE_53),
	.div_clk(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst8.cnt_num = 1000000;

assign	SYNTHESIZED_WIRE_43 =  ~rst;


assign	SYNTHESIZED_WIRE_34 = SYNTHESIZED_WIRE_36 | SYNTHESIZED_WIRE_37 | SYNTHESIZED_WIRE_38 | SYNTHESIZED_WIRE_39;

assign	SYNTHESIZED_WIRE_40 =  ~rst;


Seven_Segment	b2v_seven_segment(
	.rst_n(SYNTHESIZED_WIRE_40),
	.tot_loc(SYNTHESIZED_WIRE_58),
	.a(seven_seg_ALTERA_SYNTHESIZED[0]),
	.b(seven_seg_ALTERA_SYNTHESIZED[1]),
	.c(seven_seg_ALTERA_SYNTHESIZED[2]),
	.d(seven_seg_ALTERA_SYNTHESIZED[3]),
	.e(seven_seg_ALTERA_SYNTHESIZED[4]),
	.f(seven_seg_ALTERA_SYNTHESIZED[5]),
	.g(seven_seg_ALTERA_SYNTHESIZED[6]));


SpeedDisplay	b2v_spd_disp(
	.clk(SYNTHESIZED_WIRE_52),
	.rst_n(SYNTHESIZED_WIRE_43),
	.cur_speed(SYNTHESIZED_WIRE_56),
	.spd_limit(SYNTHESIZED_WIRE_45),
	.com8(eight_seg_digit_ALTERA_SYNTHESIZED[7]),
	.com7(eight_seg_digit_ALTERA_SYNTHESIZED[6]),
	.com4(eight_seg_digit_ALTERA_SYNTHESIZED[3]),
	.com3(eight_seg_digit_ALTERA_SYNTHESIZED[2]),
	.a(eight_seg_seven_ALTERA_SYNTHESIZED[0]),
	.b(eight_seg_seven_ALTERA_SYNTHESIZED[1]),
	.c(eight_seg_seven_ALTERA_SYNTHESIZED[2]),
	.d(eight_seg_seven_ALTERA_SYNTHESIZED[3]),
	.e(eight_seg_seven_ALTERA_SYNTHESIZED[4]),
	.f(eight_seg_seven_ALTERA_SYNTHESIZED[5]),
	.g(eight_seg_seven_ALTERA_SYNTHESIZED[6]),
	.com6(eight_seg_digit_ALTERA_SYNTHESIZED[5]),
	.com5(eight_seg_digit_ALTERA_SYNTHESIZED[4]),
	.com2(eight_seg_digit_ALTERA_SYNTHESIZED[1]),
	.com1(eight_seg_digit_ALTERA_SYNTHESIZED[0]));

assign	SYNTHESIZED_WIRE_9 =  ~rst;


traffic_light	b2v_traffic_light(
	.rst(rst),
	.clk(SYNTHESIZED_WIRE_52),
	.emerg_stop(SYNTHESIZED_WIRE_55),
	.tik(SYNTHESIZED_WIRE_54),
	.door_oc(SYNTHESIZED_WIRE_59),
	.section_loc(SYNTHESIZED_WIRE_57),
	.total_loc(SYNTHESIZED_WIRE_58),
	
	.light(SYNTHESIZED_WIRE_60));

assign	eight_seg_digit = eight_seg_digit_ALTERA_SYNTHESIZED;
assign	eight_seg_seven = eight_seg_seven_ALTERA_SYNTHESIZED;
assign	seven_seg = seven_seg_ALTERA_SYNTHESIZED;

endmodule
