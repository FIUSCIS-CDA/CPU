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
// CREATED		"Mon Aug 18 19:54:03 2025"

module BRANCH(
	Op,
	Y
);


input wire	[31:26] Op;
output wire	Y;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





BEQ	b2v_inst(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_1));


BNE	b2v_inst2(
	.Op(Op),
	.Y(SYNTHESIZED_WIRE_0));

assign	Y = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1;


endmodule
