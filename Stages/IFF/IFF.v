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
// CREATED		"Tue Aug 19 22:39:08 2025"

module IFF(
	stall,
	reset,
	clk,
	Taken,
	Fix,
	beq_offset,
	Pick,
	_PC,
	IFIR,
	IFop
);


input wire	stall;
input wire	reset;
input wire	clk;
input wire	Taken;
input wire	Fix;
input wire	[15:0] beq_offset;
input wire	[1:0] Pick;
output wire	[31:0] _PC;
output wire	[31:0] IFIR;
output wire	[31:26] IFop;

wire	[31:0] FixedBranchPC;
wire	[31:0] FixforPredictNotTaken;
wire	[31:0] FixforPredictTaken;
wire	[31:0] IDbeqtargettimes4;
wire	[31:0] IFbeqtargettimes4;
wire	[31:0] IFIR_ALTERA_SYNTHESIZED;
wire	[31:0] Instruction;
wire	[31:0] newPC;
wire	[31:0] NewPCforBEQ;
wire	[31:0] PC;
wire	[31:0] PCJump;
wire	[31:0] PredictNotTakenNewPC;
wire	[31:0] PredictTakenNewPC;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[31:0] SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_1 = 0;
assign	SYNTHESIZED_WIRE_2 = 0;






MUX2_32	b2v_MUXFixPC(
	.S(Taken),
	.A(FixforPredictNotTaken),
	.B(FixforPredictTaken),
	.Y(FixedBranchPC));


MUX2_32	b2v_MUXIFIR(
	.S(Fix),
	.A(Instruction),
	.B(SYNTHESIZED_WIRE_0),
	.Y(IFIR_ALTERA_SYNTHESIZED));


MUX2_32	b2v_MUXPCREG(
	.S(stall),
	.A(newPC),
	.B(PC),
	.Y(SYNTHESIZED_WIRE_3));


MUX2_32	b2v_MUXPredictPC(
	.S(Taken),
	.A(PredictNotTakenNewPC),
	.B(PredictTakenNewPC),
	.Y(NewPCforBEQ));


Adder_32	b2v_MYADDER(
	.CarryIn(SYNTHESIZED_WIRE_1),
	.A(IDbeqtargettimes4),
	.B(PC),
	
	.S(FixforPredictNotTaken));


Adder_32	b2v_MYADDER8(
	.CarryIn(SYNTHESIZED_WIRE_2),
	.A(PredictNotTakenNewPC),
	.B(IFbeqtargettimes4),
	
	.S(PredictTakenNewPC));


ROM	b2v_MYIM(
	.a(PC),
	.d(Instruction));


INC4_32	b2v_MYINC(
	.A(PC),
	
	.S(PredictNotTakenNewPC));


SESL16_32	b2v_mySESL1(
	.A(beq_offset),
	.Y(IDbeqtargettimes4));


SESL16_32	b2v_mySESL2(
	.A(IFIR_ALTERA_SYNTHESIZED[15:0]),
	.Y(IFbeqtargettimes4));


SPLICE_PCJ	b2v_MYSPLICEPCJ(
	.ir25_0(Instruction[25:0]),
	.pc31_28(PC[31:28]),
	.Y(PCJump));


Subtractor_32	b2v_MYSUBTRACTOR(
	.A(PC),
	.B(IDbeqtargettimes4),
	
	.Y(FixforPredictTaken));


Zero_32	b2v_myZero(
	.Zero(SYNTHESIZED_WIRE_0));


MUX4_32	b2v_PCBranch(
	.A(PredictNotTakenNewPC),
	.B(FixedBranchPC),
	.C(PCJump),
	.D(NewPCforBEQ),
	.S(Pick),
	.Y(newPC));


Register_32	b2v_PCREG(
	.reset(reset),
	.clk(clk),
	.D(SYNTHESIZED_WIRE_3),
	.Q(PC));

assign	_PC = PC;
assign	IFIR = IFIR_ALTERA_SYNTHESIZED;
assign	IFop[31:26] = IFIR_ALTERA_SYNTHESIZED[31:26];

endmodule
