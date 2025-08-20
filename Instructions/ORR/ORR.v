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
// CREATED		"Mon Aug 18 18:15:40 2025"

module ORR(
	Funct,
	Op,
	Y
);


input wire	[5:0] Funct;
input wire	[31:26] Op;
output wire	Y;

wire	isOR;
wire	isRTYPE;
wire	NOTF1;
wire	NOTF3;
wire	NOTF4;




assign	Y = isRTYPE & isOR;

assign	isOR = NOTF3 & Funct[5] & NOTF4 & Funct[2] & NOTF1 & Funct[0];


RTYPE	b2v_inst15(
	.Op(Op),
	.Y(isRTYPE));

assign	NOTF1 =  ~Funct[1];

assign	NOTF4 =  ~Funct[4];

assign	NOTF3 =  ~Funct[3];


endmodule
