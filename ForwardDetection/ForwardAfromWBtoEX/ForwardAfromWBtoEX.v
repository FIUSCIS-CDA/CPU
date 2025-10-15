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
// CREATED		"Tue Oct 14 11:30:30 2025"

module ForwardAfromWBtoEX(
	EXrm,
	WBop,
	WBrn,
	WBrp,
	Y
);


input wire	[25:21] EXrm;
input wire	[31:26] WBop;
input wire	[20:16] WBrn;
input wire	[15:11] WBrp;
output wire	Y;

wire	WBopisLWorADDI_and_WBrnisEXrm;
wire	WBopisRTYPE;
wire	WBopisRTYPE_and_WBrpisEXrm;
wire	WBrnisEXrm;
wire	WBrpisEXrm;
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


EQ_NONZERO_5	b2v_inst2(
	.A(EXrm),
	.B(WBrp),
	.Y(WBrpisEXrm));


EQ_NONZERO_5	b2v_inst3(
	.A(EXrm),
	.B(WBrn),
	.Y(WBrnisEXrm));

assign	WBopisRTYPE_and_WBrpisEXrm = WBopisRTYPE & WBrpisEXrm;

assign	WBopisLWorADDI_and_WBrnisEXrm = SYNTHESIZED_WIRE_5 & WBrnisEXrm;

assign	Y = WBopisLWorADDI_and_WBrnisEXrm | WBopisRTYPE_and_WBrpisEXrm;


SW	b2v_inst9(
	.Op(WBop),
	.Y(SYNTHESIZED_WIRE_1));


RTYPE	b2v_WBopRTYPE(
	.Op(WBop),
	.Y(WBopisRTYPE));


endmodule
