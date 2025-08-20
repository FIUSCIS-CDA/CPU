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
// CREATED		"Tue Aug 19 21:12:47 2025"

module ForwardBfromWBtoEX(
	EXrn,
	WBop,
	WBrn,
	WBrp,
	Y
);


input wire	[20:16] EXrn;
input wire	[31:26] WBop;
input wire	[20:16] WBrn;
input wire	[15:11] WBrp;
output wire	Y;

wire	WBopisADDIorLW_and_WBrnisEXrn;
wire	WBopisRTYPE;
wire	WBopisRTYPE_and_WBrpisEXrn;
wire	WBrnisEXrn;
wire	WBrpisEXrn;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;





ITYPE	b2v_inst(
	.Op(WBop),
	.Y(SYNTHESIZED_WIRE_3));


BRANCH	b2v_inst10(
	.Op(WBop),
	.Y(SYNTHESIZED_WIRE_0));

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_4 =  ~SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4;


EQ_NONZERO_5	b2v_inst14(
	.reg1(EXrn),
	.reg2(WBrn),
	.Y(WBrnisEXrn));

assign	WBopisADDIorLW_and_WBrnisEXrn = SYNTHESIZED_WIRE_5 & WBrnisEXrn;

assign	WBopisRTYPE_and_WBrpisEXrn = WBopisRTYPE & WBrpisEXrn;

assign	Y = WBopisADDIorLW_and_WBrnisEXrn | WBopisRTYPE_and_WBrpisEXrn;


EQ_NONZERO_5	b2v_inst8(
	.reg1(EXrn),
	.reg2(WBrp),
	.Y(WBrpisEXrn));


SW	b2v_inst9(
	.Op(WBop),
	.Y(SYNTHESIZED_WIRE_1));


RTYPE	b2v_WBopRTYPE(
	.Op(WBop),
	.Y(WBopisRTYPE));


endmodule
