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
// CREATED		"Tue Aug 19 20:12:54 2025"

module WB(
	Instruction,
	WBValue,
	WBwe,
	WBData,
	WBForward,
	WBop,
	WBReg,
	WBrn,
	WBrp
);


input wire	[31:0] Instruction;
input wire	[31:0] WBValue;
output wire	WBwe;
output wire	[31:0] WBData;
output wire	[31:0] WBForward;
output wire	[31:26] WBop;
output wire	[4:0] WBReg;
output wire	[20:16] WBrn;
output wire	[15:11] WBrp;

wire	[31:0] WBIR;
wire	WBopisLW;
wire	WBopisLWADDIorSLTI;
wire	WBopRTYPE;
wire	WBrdisNOT0;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;

assign	WBData = WBValue;
assign	WBForward = WBValue;



assign	WBwe = SYNTHESIZED_WIRE_0 | WBopisLWADDIorSLTI;

assign	SYNTHESIZED_WIRE_0 = WBopRTYPE & WBrdisNOT0;


SW	b2v_inst10(
	.Op(WBIR[31:26]),
	.Y(WBopisLW));


BRANCH	b2v_inst11(
	.Op(WBIR[31:26]),
	.Y(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_2 = WBopisLW | SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_2;

assign	WBopisLWADDIorSLTI = SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_4;


NONZERO_5	b2v_inst8(
	.Register(WBIR[15:11]),
	.Y(WBrdisNOT0));


ITYPE	b2v_inst9(
	.Op(WBIR[31:26]),
	.Y(SYNTHESIZED_WIRE_4));


RTYPE	b2v_isRTYPE(
	.Op(WBIR[31:26]),
	.Y(WBopRTYPE));


MUX2_5	b2v_MUXWBReg(
	.S(WBopisLWADDIorSLTI),
	.A(WBIR[15:11]),
	.B(WBIR[20:16]),
	.Y(WBReg));

assign	WBIR = Instruction;
assign	WBop[31:26] = WBIR[31:26];
assign	WBrn[20:16] = WBIR[20:16];
assign	WBrp[15:11] = WBIR[15:11];

endmodule
