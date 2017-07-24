// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Mon Jul 24 16:30:09 2017
// Host        : WIN-AJ9PQHSLB0U running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/vivado/cpu/cpu.sim/sim_1/synth/func/cpu_top_func_synth.v
// Design      : cpu_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module cpu_top
   (r,
    z);
  output [31:0]r;
  output z;

  wire [31:0]r;
  wire z;

OBUF \r_OBUF[0]_inst 
       (.I(1'b0),
        .O(r[0]));
OBUF \r_OBUF[10]_inst 
       (.I(1'b0),
        .O(r[10]));
OBUF \r_OBUF[11]_inst 
       (.I(1'b0),
        .O(r[11]));
OBUF \r_OBUF[12]_inst 
       (.I(1'b0),
        .O(r[12]));
OBUF \r_OBUF[13]_inst 
       (.I(1'b0),
        .O(r[13]));
OBUF \r_OBUF[14]_inst 
       (.I(1'b0),
        .O(r[14]));
OBUF \r_OBUF[15]_inst 
       (.I(1'b0),
        .O(r[15]));
OBUF \r_OBUF[16]_inst 
       (.I(1'b0),
        .O(r[16]));
OBUF \r_OBUF[17]_inst 
       (.I(1'b0),
        .O(r[17]));
OBUF \r_OBUF[18]_inst 
       (.I(1'b0),
        .O(r[18]));
OBUF \r_OBUF[19]_inst 
       (.I(1'b0),
        .O(r[19]));
OBUF \r_OBUF[1]_inst 
       (.I(1'b0),
        .O(r[1]));
OBUF \r_OBUF[20]_inst 
       (.I(1'b0),
        .O(r[20]));
OBUF \r_OBUF[21]_inst 
       (.I(1'b0),
        .O(r[21]));
OBUF \r_OBUF[22]_inst 
       (.I(1'b0),
        .O(r[22]));
OBUF \r_OBUF[23]_inst 
       (.I(1'b0),
        .O(r[23]));
OBUF \r_OBUF[24]_inst 
       (.I(1'b0),
        .O(r[24]));
OBUF \r_OBUF[25]_inst 
       (.I(1'b0),
        .O(r[25]));
OBUF \r_OBUF[26]_inst 
       (.I(1'b0),
        .O(r[26]));
OBUF \r_OBUF[27]_inst 
       (.I(1'b0),
        .O(r[27]));
OBUF \r_OBUF[28]_inst 
       (.I(1'b0),
        .O(r[28]));
OBUF \r_OBUF[29]_inst 
       (.I(1'b0),
        .O(r[29]));
OBUF \r_OBUF[2]_inst 
       (.I(1'b0),
        .O(r[2]));
OBUF \r_OBUF[30]_inst 
       (.I(1'b0),
        .O(r[30]));
OBUF \r_OBUF[31]_inst 
       (.I(1'b0),
        .O(r[31]));
OBUF \r_OBUF[3]_inst 
       (.I(1'b0),
        .O(r[3]));
OBUF \r_OBUF[4]_inst 
       (.I(1'b0),
        .O(r[4]));
OBUF \r_OBUF[5]_inst 
       (.I(1'b0),
        .O(r[5]));
OBUF \r_OBUF[6]_inst 
       (.I(1'b0),
        .O(r[6]));
OBUF \r_OBUF[7]_inst 
       (.I(1'b0),
        .O(r[7]));
OBUF \r_OBUF[8]_inst 
       (.I(1'b0),
        .O(r[8]));
OBUF \r_OBUF[9]_inst 
       (.I(1'b0),
        .O(r[9]));
OBUF z_OBUF_inst
       (.I(1'b1),
        .O(z));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
