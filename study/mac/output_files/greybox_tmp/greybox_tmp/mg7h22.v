//altmult_accum ACCUM_DIRECTION="ADD" ADDNSUB_PIPELINE_REG="CLOCK0" ADDNSUB_REG="CLOCK0" CBX_SINGLE_OUTPUT_FILE="ON" DEDICATED_MULTIPLIER_CIRCUITRY="YES" INPUT_REG_A="CLOCK0" INPUT_REG_B="CLOCK0" INPUT_SOURCE_A="DATAA" INPUT_SOURCE_B="DATAB" INTENDED_DEVICE_FAMILY=""Cyclone IV E"" LPM_TYPE="altmult_accum" MULTIPLIER_REG="CLOCK0" OUTPUT_REG="CLOCK0" PORT_ADDNSUB="PORT_UNUSED" PORT_SIGNA="PORT_UNUSED" PORT_SIGNB="PORT_UNUSED" REPRESENTATION_A="UNSIGNED" REPRESENTATION_B="UNSIGNED" SIGN_PIPELINE_REG_A="CLOCK0" SIGN_PIPELINE_REG_B="CLOCK0" SIGN_REG_A="CLOCK0" SIGN_REG_B="CLOCK0" WIDTH_A=16 WIDTH_B=16 WIDTH_C=22 WIDTH_RESULT=16 WIDTH_UPPER_DATA=1 clock0 coefsel0 coefsel1 coefsel2 coefsel3 dataa datab datac overflow result
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



//synthesis_resources = altmult_accum 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mg7h22
	( 
	clock0,
	coefsel0,
	coefsel1,
	coefsel2,
	coefsel3,
	dataa,
	datab,
	datac,
	overflow,
	result) /* synthesis synthesis_clearbox=1 */;
	input   clock0;
	input   [2:0]  coefsel0;
	input   [2:0]  coefsel1;
	input   [2:0]  coefsel2;
	input   [2:0]  coefsel3;
	input   [15:0]  dataa;
	input   [15:0]  datab;
	input   [21:0]  datac;
	output   overflow;
	output   [15:0]  result;

	wire  wire_mgl_prim1_overflow;
	wire  [15:0]   wire_mgl_prim1_result;

	altmult_accum   mgl_prim1
	( 
	.clock0(clock0),
	.coefsel0(coefsel0),
	.coefsel1(coefsel1),
	.coefsel2(coefsel2),
	.coefsel3(coefsel3),
	.dataa(dataa),
	.datab(datab),
	.datac(datac),
	.overflow(wire_mgl_prim1_overflow),
	.result(wire_mgl_prim1_result));
	defparam
		mgl_prim1.accum_direction = "ADD",
		mgl_prim1.addnsub_pipeline_reg = "CLOCK0",
		mgl_prim1.addnsub_reg = "CLOCK0",
		mgl_prim1.dedicated_multiplier_circuitry = "YES",
		mgl_prim1.input_reg_a = "CLOCK0",
		mgl_prim1.input_reg_b = "CLOCK0",
		mgl_prim1.input_source_a = "DATAA",
		mgl_prim1.input_source_b = "DATAB",
		mgl_prim1.intended_device_family = ""Cyclone IV E"",
		mgl_prim1.lpm_type = "altmult_accum",
		mgl_prim1.multiplier_reg = "CLOCK0",
		mgl_prim1.output_reg = "CLOCK0",
		mgl_prim1.port_addnsub = "PORT_UNUSED",
		mgl_prim1.port_signa = "PORT_UNUSED",
		mgl_prim1.port_signb = "PORT_UNUSED",
		mgl_prim1.representation_a = "UNSIGNED",
		mgl_prim1.representation_b = "UNSIGNED",
		mgl_prim1.sign_pipeline_reg_a = "CLOCK0",
		mgl_prim1.sign_pipeline_reg_b = "CLOCK0",
		mgl_prim1.sign_reg_a = "CLOCK0",
		mgl_prim1.sign_reg_b = "CLOCK0",
		mgl_prim1.width_a = 16,
		mgl_prim1.width_b = 16,
		mgl_prim1.width_c = 22,
		mgl_prim1.width_result = 16,
		mgl_prim1.width_upper_data = 1;
	assign
		overflow = wire_mgl_prim1_overflow,
		result = wire_mgl_prim1_result;
endmodule //mg7h22
//VALID FILE
