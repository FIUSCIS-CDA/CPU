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
// CREATED		"Tue Aug 19 20:23:38 2025"

module StallDetection(
	EXop,
	EXrm,
	EXrn,
	EXrp,
	IDop,
	IDrm,
	IDrn,
	MEMop,
	MEMrn,
	IDStall,
	EXStall
);


input wire	[31:26] EXop;
input wire	[25:21] EXrm;
input wire	[20:16] EXrn;
input wire	[15:11] EXrp;
input wire	[31:26] IDop;
input wire	[25:21] IDrm;
input wire	[20:16] IDrn;
input wire	[31:26] MEMop;
input wire	[20:16] MEMrn;
output wire	IDStall;
output wire	EXStall;

wire	EXopisIType;
wire	EXopisITypeandMEMrnisEXrm;
wire	EXopisLWorADDI_and_RAWhazardonEXrn;
wire	EXopisRTYPE;
wire	EXopisRTYPE_and_RAWhazardonEXrp;
wire	EXopisRTYPEandMEMrnisEXrmorEXrn;
wire	EXrnisIDrm;
wire	EXrnisIDrn;
wire	EXrpisIDrm;
wire	EXrpisIDrmorIDrn;
wire	EXrpisIDrn;
wire	IDRAWhazard;
wire	MEMopisLW;
wire	MEMopisLW_and_RAWhazardonMEMrn;
wire	MEMrnisIDrm;
wire	MEMrnisIDrn;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;





RTYPE	b2v_EXopRTYPE(
	.Op(EXop),
	.Y(EXopisRTYPE));


BRANCH	b2v_inst(
	.Op(IDop),
	.Y(SYNTHESIZED_WIRE_5));

assign	IDRAWhazard = EXopisLWorADDI_and_RAWhazardonEXrn | MEMopisLW_and_RAWhazardonMEMrn | EXopisRTYPE_and_RAWhazardonEXrp;


BRANCH	b2v_inst11(
	.Op(EXop),
	.Y(SYNTHESIZED_WIRE_0));

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_4 =  ~SYNTHESIZED_WIRE_2;

assign	EXopisIType = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4;


EQ_NONZERO_5	b2v_inst15(
	.reg1(EXrp),
	.reg2(IDrm),
	.Y(EXrpisIDrm));


EQ_NONZERO_5	b2v_inst16(
	.reg1(EXrp),
	.reg2(IDrn),
	.Y(EXrpisIDrn));


EQ_NONZERO_5	b2v_inst17(
	.reg1(EXrn),
	.reg2(IDrm),
	.Y(EXrnisIDrm));


EQ_NONZERO_5	b2v_inst18(
	.reg1(EXrn),
	.reg2(IDrn),
	.Y(EXrnisIDrn));


EQ_NONZERO_5	b2v_inst19(
	.reg1(MEMrn),
	.reg2(IDrm),
	.Y(MEMrnisIDrm));

assign	IDStall = SYNTHESIZED_WIRE_5 & IDRAWhazard;

assign	EXrpisIDrmorIDrn = EXrpisIDrn | EXrpisIDrm;


EQ_NONZERO_5	b2v_inst21(
	.reg1(MEMrn),
	.reg2(IDrn),
	.Y(MEMrnisIDrn));

assign	SYNTHESIZED_WIRE_8 = EXrnisIDrn | EXrnisIDrm;


EQ_NONZERO_5	b2v_inst23(
	.reg1(MEMrn),
	.reg2(EXrm),
	.Y(SYNTHESIZED_WIRE_13));

assign	SYNTHESIZED_WIRE_9 = MEMrnisIDrn | MEMrnisIDrm;


EQ_NONZERO_5	b2v_inst25(
	.reg1(MEMrn),
	.reg2(EXrn),
	.Y(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_13;

assign	EXopisLWorADDI_and_RAWhazardonEXrn = EXopisIType & SYNTHESIZED_WIRE_8;

assign	EXopisRTYPE_and_RAWhazardonEXrp = EXopisRTYPE & EXrpisIDrmorIDrn;

assign	MEMopisLW_and_RAWhazardonMEMrn = MEMopisLW & SYNTHESIZED_WIRE_9;

assign	EXopisRTYPEandMEMrnisEXrmorEXrn = EXopisRTYPE & SYNTHESIZED_WIRE_10;

assign	EXopisITypeandMEMrnisEXrm = EXopisIType & SYNTHESIZED_WIRE_13;

assign	EXStall = MEMopisLW & SYNTHESIZED_WIRE_12;


ITYPE	b2v_inst7(
	.Op(EXop),
	.Y(SYNTHESIZED_WIRE_3));


SW	b2v_inst8(
	.Op(EXop),
	.Y(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_12 = EXopisITypeandMEMrnisEXrm | EXopisRTYPEandMEMrnisEXrmorEXrn;


LW	b2v_MEMopLW(
	.Op(MEMop),
	.Y(MEMopisLW));


endmodule
