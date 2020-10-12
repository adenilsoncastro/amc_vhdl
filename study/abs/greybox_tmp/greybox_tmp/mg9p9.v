//ALTSQRT CBX_SINGLE_OUTPUT_FILE="ON" PIPELINE=0 Q_PORT_WIDTH=8 R_PORT_WIDTH=9 WIDTH=16 q radical remainder
//VERSION_BEGIN 20.1 cbx_mgl 2020:06:05:12:11:10:SJ cbx_stratixii 2020:06:05:12:04:51:SJ cbx_util_mgl 2020:06:05:12:04:51:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2020  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details, at
//  https://fpgasoftware.intel.com/eula.



//synthesis_resources = ALTSQRT 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mg9p9
	( 
	q,
	radical,
	remainder) /* synthesis synthesis_clearbox=1 */;
	output   [7:0]  q;
	input   [15:0]  radical;
	output   [8:0]  remainder;

	wire  [7:0]   wire_mgl_prim1_q;
	wire  [8:0]   wire_mgl_prim1_remainder;

	ALTSQRT   mgl_prim1
	( 
	.q(wire_mgl_prim1_q),
	.radical(radical),
	.remainder(wire_mgl_prim1_remainder));
	defparam
		mgl_prim1.pipeline = 0,
		mgl_prim1.q_port_width = 8,
		mgl_prim1.r_port_width = 9,
		mgl_prim1.width = 16;
	assign
		q = wire_mgl_prim1_q,
		remainder = wire_mgl_prim1_remainder;
endmodule //mg9p9
//VALID FILE
