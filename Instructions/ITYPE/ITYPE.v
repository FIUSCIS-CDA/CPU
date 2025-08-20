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
// CREATED		"Mon Aug 18 19:56:21 2025"

module ITYPE(
	Op,
	Y
);


input wire	[31:26] Op;
output wire	Y;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;





BRANCH	b2v_inst(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_7));

assign	Y = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5 | SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7;


SLTI	b2v_inst10(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_3));


ORI	b2v_inst11(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_5));


LUI	b2v_inst12(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_4));


ANDI	b2v_inst13(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_6));


ADDI	b2v_inst4(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_1));


LW	b2v_isLW5(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_0));


SW	b2v_isSW6(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_2));


endmodule
