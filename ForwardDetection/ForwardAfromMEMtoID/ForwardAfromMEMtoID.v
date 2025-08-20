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
// CREATED		"Tue Aug 19 22:26:15 2025"

module ForwardAfromMEMtoID(
	IDrm,
	MEMop,
	MEMrn,
	MEMrp,
	Y
);


input wire	[25:21] IDrm;
input wire	[31:26] MEMop;
input wire	[20:16] MEMrn;
input wire	[15:11] MEMrp;
output wire	Y;

wire	MEMopisRTYPE;
wire	MEMopisRTYPE_and_MEMrpisIDrm;
wire	MEMrnisIDrm;
wire	MEMrpisIDrm;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;





ITYPE	b2v_inst1(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_2));

assign	Y = SYNTHESIZED_WIRE_0 | MEMopisRTYPE_and_MEMrpisIDrm;


EQ_NONZERO_5	b2v_inst11(
	.reg1(IDrm),
	.reg2(MEMrp),
	.Y(MEMrpisIDrm));


BRANCH	b2v_inst12(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3;


EQ_NONZERO_5	b2v_inst15(
	.reg1(IDrm),
	.reg2(MEMrn),
	.Y(MEMrnisIDrm));

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6;

assign	MEMopisRTYPE_and_MEMrpisIDrm = MEMopisRTYPE & MEMrpisIDrm;

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_7 & MEMrnisIDrm;


LW	b2v_inst6(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_5));


SW	b2v_inst9(
	.Op(MEMop),
	.Y(SYNTHESIZED_WIRE_6));


RTYPE	b2v_MEMopRTYPE(
	.Op(MEMop),
	.Y(MEMopisRTYPE));


endmodule
