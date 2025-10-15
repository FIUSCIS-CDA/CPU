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
// CREATED		"Wed Oct 15 09:37:20 2025"

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
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_16;





RTYPE	b2v_EXopRTYPE(
	.Op(EXop),
	.Y(EXopisRTYPE));


BRANCH	b2v_inst(
	.Op(IDop),
	.Y(SYNTHESIZED_WIRE_5));

assign	IDRAWhazard = EXopisLWorADDI_and_RAWhazardonEXrn | MEMopisLW_and_RAWhazardonMEMrn | EXopisRTYPE_and_RAWhazardonEXrp;


EQ_NONZERO_5	b2v_inst10(
	.A(EXrn),
	.B(IDrm),
	.Y(EXrnisIDrm));


BRANCH	b2v_inst11(
	.Op(EXop),
	.Y(SYNTHESIZED_WIRE_0));

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_4 =  ~SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_19 = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4;


EQ_NONZERO_5	b2v_inst15(
	.A(EXrn),
	.B(IDrn),
	.Y(EXrnisIDrn));


EQ_NONZERO_5	b2v_inst16(
	.A(MEMrn),
	.B(IDrm),
	.Y(MEMrnisIDrm));


EQ_NONZERO_5	b2v_inst17(
	.A(MEMrn),
	.B(IDrn),
	.Y(MEMrnisIDrn));


EQ_NONZERO_5	b2v_inst18(
	.A(MEMrn),
	.B(EXrm),
	.Y(SYNTHESIZED_WIRE_18));


EQ_NONZERO_5	b2v_inst19(
	.A(MEMrn),
	.B(EXrn),
	.Y(SYNTHESIZED_WIRE_7));

assign	IDStall = SYNTHESIZED_WIRE_5 & IDRAWhazard;

assign	EXrpisIDrmorIDrn = EXrpisIDrn | EXrpisIDrm;

assign	SYNTHESIZED_WIRE_10 = EXrnisIDrn | EXrnisIDrm;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_17 | EXopisRTYPE;

assign	SYNTHESIZED_WIRE_11 = MEMrnisIDrn | MEMrnisIDrm;

assign	SYNTHESIZED_WIRE_13 = SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_18;

assign	EXopisLWorADDI_and_RAWhazardonEXrn = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_10;

assign	EXopisRTYPE_and_RAWhazardonEXrp = EXopisRTYPE & EXrpisIDrmorIDrn;

assign	MEMopisLW_and_RAWhazardonMEMrn = MEMopisLW & SYNTHESIZED_WIRE_11;


EQ_NONZERO_5	b2v_inst5(
	.A(EXrp),
	.B(IDrm),
	.Y(EXrpisIDrm));

assign	EXopisRTYPEandMEMrnisEXrmorEXrn = SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	EXopisITypeandMEMrnisEXrm = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_18;

assign	EXStall = MEMopisLW & SYNTHESIZED_WIRE_16;


EQ_NONZERO_5	b2v_inst6(
	.A(EXrp),
	.B(IDrn),
	.Y(EXrpisIDrn));


ITYPE	b2v_inst7(
	.Op(EXop),
	.Y(SYNTHESIZED_WIRE_3));


SW	b2v_inst8(
	.Op(EXop),
	.Y(SYNTHESIZED_WIRE_17));

assign	SYNTHESIZED_WIRE_16 = EXopisITypeandMEMrnisEXrm | EXopisRTYPEandMEMrnisEXrmorEXrn;


LW	b2v_MEMopLW(
	.Op(MEMop),
	.Y(MEMopisLW));


endmodule
