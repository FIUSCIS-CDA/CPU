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
// CREATED		"Wed Aug 20 08:14:07 2025"

module ALUCtl(
	Functcode,
	Opcode,
	ALUOp
);


input wire	[5:0] Functcode;
input wire	[31:26] Opcode;
output wire	[2:0] ALUOp;

wire	[2:0] ALUOp_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_22 = 0;




LUI	b2v_inst(
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_20));


LW	b2v_inst10(
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_15));


SW	b2v_inst11(
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_14));


ADD	b2v_inst12(
	.Funct(Functcode),
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_16));


SUB	b2v_inst13(
	.Funct(Functcode),
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_19));

assign	ALUOp_ALTERA_SYNTHESIZED[0] = SYNTHESIZED_WIRE_18 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_19;


ORI	b2v_inst15(
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_1));


ORR	b2v_inst16(
	.Funct(Functcode),
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_2));



MULT	b2v_inst2(
	.Funct(Functcode),
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_18));


SLL	b2v_inst3(
	.Functcode(Functcode),
	.Opcode(Opcode),
	.Y(SYNTHESIZED_WIRE_21));


SLTI	b2v_inst4(
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_7));


SLT	b2v_inst5(
	.Funct(Functcode),
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_8));

assign	ALUOp_ALTERA_SYNTHESIZED[2] = SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_18 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_22;

assign	ALUOp_ALTERA_SYNTHESIZED[1] = SYNTHESIZED_WIRE_22 | SYNTHESIZED_WIRE_21 | SYNTHESIZED_WIRE_20 | SYNTHESIZED_WIRE_13 | SYNTHESIZED_WIRE_14 | SYNTHESIZED_WIRE_15 | SYNTHESIZED_WIRE_16 | SYNTHESIZED_WIRE_19;


ADDI	b2v_inst9(
	.Op(Opcode),
	.Y(SYNTHESIZED_WIRE_13));

assign	ALUOp = ALUOp_ALTERA_SYNTHESIZED;

endmodule
