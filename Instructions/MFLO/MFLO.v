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
// CREATED		"Mon Aug 18 18:13:59 2025"

module MFLO(
	Funct,
	Op,
	Y
);


input wire	[5:0] Funct;
input wire	[31:26] Op;
output wire	Y;

wire	isMFLO;
wire	isRTYPE;
wire	NOTF0;
wire	NOTF2;
wire	NOTF3;
wire	NOTF5;




assign	Y = isRTYPE & isMFLO;

assign	NOTF0 =  ~Funct[0];

assign	NOTF5 =  ~Funct[5];

assign	isMFLO = NOTF3 & NOTF5 & Funct[4] & NOTF2 & Funct[1] & NOTF0;


RTYPE	b2v_inst13(
	.Op(Op),
	.Y(isRTYPE));

assign	NOTF2 =  ~Funct[2];

assign	NOTF3 =  ~Funct[3];


endmodule
