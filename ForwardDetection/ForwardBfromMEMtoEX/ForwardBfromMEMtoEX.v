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
// CREATED		"Tue Aug 19 21:29:52 2025"

module ForwardBfromMEMtoEX(
	EXrn,
	MEMop,
	MEMrn,
	MEMrp,
	Y
);


input wire	[20:16] EXrn;
input wire	[31:26] MEMop;
input wire	[20:16] MEMrn;
input wire	[15:11] MEMrp;
output wire	Y;

wire	MEMopisADDI_and_MEMrnisEXrn;
wire	MEMopisRTYPE;
wire	MEMopisRTYPE_and_MEMrpisEXrn;
wire	MEMrnisEXrn;
wire	MEMrpisEXrn;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;





ITYPE	b2v_inst(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_1));

assign	Y = MEMopisADDI_and_MEMrnisEXrn | MEMopisRTYPE_and_MEMrpisEXrn;


BRANCH	b2v_inst10(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_3));


EQ_NONZERO_5	b2v_inst11(
	.reg1(EXrn),
	.reg2(MEMrp),
	.Y(MEMrpisEXrn));


EQ_NONZERO_5	b2v_inst12(
	.reg1(EXrn),
	.reg2(MEMrn),
	.Y(MEMrnisEXrn));

assign	SYNTHESIZED_WIRE_2 =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_1 & SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	MEMopisRTYPE_and_MEMrpisEXrn = MEMopisRTYPE & MEMrpisEXrn;

assign	MEMopisADDI_and_MEMrnisEXrn = SYNTHESIZED_WIRE_6 & MEMrnisEXrn;


LW	b2v_inst5(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_4));


SW	b2v_inst9(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_5));


RTYPE	b2v_MEMopRTYPE(
	.Op(MEMop),
	.Y(MEMopisRTYPE));


endmodule
