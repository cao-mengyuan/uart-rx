// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 31 21:40:09 2022
// Host        : LAPTOP-NCO9BMV1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/vivado_files/uart/uart.sim/sim_1/impl/timing/xsim/top_tb_time_impl.v
// Design      : top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module counter74x163
   (CO1,
    Q,
    EN1,
    LD1,
    E,
    clk_IBUF_BUFG,
    D);
  output CO1;
  output [3:0]Q;
  input EN1;
  input LD1;
  input [0:0]E;
  input clk_IBUF_BUFG;
  input [0:0]D;

  wire CO1;
  wire [0:0]D;
  wire [0:0]E;
  wire EN1;
  wire LD1;
  wire [3:0]Q;
  wire \Q[3]_i_1__0_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire clk_IBUF_BUFG;
  wire [2:1]p_0_in__0;

  LUT3 #(
    .INIT(8'h60)) 
    \Q[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(LD1),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \Q[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(LD1),
        .O(p_0_in__0[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \Q[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\Q[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAFFFF)) 
    \Q[3]_i_3 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(LD1),
        .O(\Q[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D),
        .Q(Q[0]),
        .R(\Q[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[1]),
        .Q(Q[1]),
        .R(\Q[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(p_0_in__0[2]),
        .Q(Q[2]),
        .R(\Q[3]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\Q[3]_i_3_n_0 ),
        .Q(Q[3]),
        .R(\Q[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \ns_OBUF[1]_inst_i_2 
       (.I0(EN1),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(CO1));
endmodule

(* ORIG_REF_NAME = "counter74x163" *) 
module counter74x163_0
   (Q2,
    E,
    clk_16_OBUF,
    CLR2);
  output [3:0]Q2;
  input [0:0]E;
  input clk_16_OBUF;
  input CLR2;

  wire CLR2;
  wire [0:0]E;
  wire [3:0]Q0__0;
  wire [3:0]Q2;
  wire \Q[2]_i_1__1_n_0 ;
  wire \Q[3]_i_1__1_n_0 ;
  wire clk_16_OBUF;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1__0 
       (.I0(Q2[0]),
        .O(Q0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[1]_i_1__1 
       (.I0(Q2[0]),
        .I1(Q2[1]),
        .O(Q0__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[2]_i_1__1 
       (.I0(Q2[1]),
        .I1(Q2[0]),
        .I2(Q2[2]),
        .O(\Q[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h8000FFFF)) 
    \Q[3]_i_1__1 
       (.I0(Q2[3]),
        .I1(Q2[2]),
        .I2(Q2[0]),
        .I3(Q2[1]),
        .I4(CLR2),
        .O(\Q[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q[3]_i_2__0 
       (.I0(Q2[0]),
        .I1(Q2[1]),
        .I2(Q2[2]),
        .I3(Q2[3]),
        .O(Q0__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_16_OBUF),
        .CE(E),
        .D(Q0__0[0]),
        .Q(Q2[0]),
        .R(\Q[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_16_OBUF),
        .CE(E),
        .D(Q0__0[1]),
        .Q(Q2[1]),
        .R(\Q[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_16_OBUF),
        .CE(E),
        .D(\Q[2]_i_1__1_n_0 ),
        .Q(Q2[2]),
        .R(\Q[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_16_OBUF),
        .CE(E),
        .D(Q0__0[3]),
        .Q(Q2[3]),
        .R(\Q[3]_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "counter74x163" *) 
module counter74x163_1
   (Q,
    E,
    clk_IBUF_BUFG);
  output [3:0]Q;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]Q0;
  wire \Q[2]_i_1__0_n_0 ;
  wire \Q[3]_i_1_n_0 ;
  wire clk_IBUF_BUFG;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1 
       (.I0(Q[0]),
        .O(Q0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(Q0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[2]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\Q[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \Q[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\Q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Q[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(Q0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q0[0]),
        .Q(Q[0]),
        .R(\Q[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q0[1]),
        .Q(Q[1]),
        .R(\Q[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(\Q[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\Q[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(Q0[3]),
        .Q(Q[3]),
        .R(\Q[3]_i_1_n_0 ));
endmodule

module shift_register
   (D,
    clk_16_OBUF,
    data_IBUF);
  output [7:0]D;
  input clk_16_OBUF;
  input data_IBUF;

  wire [7:0]D;
  wire clk_16_OBUF;
  wire data_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(data_IBUF),
        .Q(D[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(D[0]),
        .Q(D[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(D[1]),
        .Q(D[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[3] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(D[2]),
        .Q(D[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[4] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(D[3]),
        .Q(D[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[5] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(D[4]),
        .Q(D[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[6] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(D[5]),
        .Q(D[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[7] 
       (.C(clk_16_OBUF),
        .CE(1'b1),
        .D(D[6]),
        .Q(D[7]),
        .R(1'b0));
endmodule

module state_change
   (EN1,
    E,
    CLR2,
    LD1,
    ns_OBUF,
    cs_OBUF,
    \FSM_sequential_cs_reg[0]_0 ,
    D,
    EN1_reg_0,
    clk_IBUF_BUFG,
    CO1,
    CO2,
    data_IBUF,
    Q,
    \FSM_sequential_cs_reg[1]_0 );
  output EN1;
  output [0:0]E;
  output CLR2;
  output LD1;
  output [1:0]ns_OBUF;
  output [1:0]cs_OBUF;
  output [0:0]\FSM_sequential_cs_reg[0]_0 ;
  output [0:0]D;
  output [0:0]EN1_reg_0;
  input clk_IBUF_BUFG;
  input CO1;
  input CO2;
  input data_IBUF;
  input [0:0]Q;
  input [0:0]\FSM_sequential_cs_reg[1]_0 ;

  wire CLR2;
  wire CLR2_i_1_n_0;
  wire CO1;
  wire CO2;
  wire [0:0]D;
  wire [0:0]E;
  wire EN1;
  wire EN10;
  wire [0:0]EN1_reg_0;
  wire EN20;
  wire \FSM_sequential_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_cs[1]_i_1_n_0 ;
  wire [0:0]\FSM_sequential_cs_reg[0]_0 ;
  wire [0:0]\FSM_sequential_cs_reg[1]_0 ;
  wire LD1;
  wire LD1_i_1_n_0;
  wire [0:0]Q;
  wire clk_IBUF_BUFG;
  wire [1:0]cs_OBUF;
  wire [0:0]cs__0;
  wire data_IBUF;
  wire [1:0]ns_OBUF;

  LUT2 #(
    .INIT(4'hE)) 
    CLR2_i_1
       (.I0(cs_OBUF[1]),
        .I1(cs__0),
        .O(CLR2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLR2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CLR2_i_1_n_0),
        .Q(CLR2),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h11311D3D)) 
    EN1_i_1
       (.I0(data_IBUF),
        .I1(cs_OBUF[1]),
        .I2(cs__0),
        .I3(CO1),
        .I4(CO2),
        .O(EN10));
  FDRE #(
    .INIT(1'b0)) 
    EN1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(EN10),
        .Q(EN1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h020200F0)) 
    EN2_i_1
       (.I0(CO1),
        .I1(data_IBUF),
        .I2(cs_OBUF[1]),
        .I3(CO2),
        .I4(cs__0),
        .O(EN20));
  FDRE #(
    .INIT(1'b0)) 
    EN2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(EN20),
        .Q(E),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h44D177D100000000)) 
    \FSM_sequential_cs[0]_i_1 
       (.I0(data_IBUF),
        .I1(cs_OBUF[1]),
        .I2(CO2),
        .I3(cs__0),
        .I4(CO1),
        .I5(\FSM_sequential_cs_reg[1]_0 ),
        .O(\FSM_sequential_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h3F200000)) 
    \FSM_sequential_cs[1]_i_1 
       (.I0(CO1),
        .I1(data_IBUF),
        .I2(cs__0),
        .I3(cs_OBUF[1]),
        .I4(\FSM_sequential_cs_reg[1]_0 ),
        .O(\FSM_sequential_cs[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s1:01,s2:10,s0:00,s3:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_cs[0]_i_1_n_0 ),
        .Q(cs__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "s1:01,s2:10,s0:00,s3:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_cs[1]_i_1_n_0 ),
        .Q(cs_OBUF[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    LD1_i_1
       (.I0(data_IBUF),
        .I1(cs__0),
        .I2(CO1),
        .I3(cs_OBUF[1]),
        .O(LD1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    LD1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(LD1_i_1_n_0),
        .Q(LD1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Q[0]_i_1__1 
       (.I0(LD1),
        .I1(Q),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[3]_i_2__1 
       (.I0(EN1),
        .I1(LD1),
        .O(EN1_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Q_o[7]_i_1 
       (.I0(cs__0),
        .I1(cs_OBUF[1]),
        .I2(data_IBUF),
        .O(\FSM_sequential_cs_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cs_OBUF[0]_inst_i_1 
       (.I0(cs__0),
        .I1(cs_OBUF[1]),
        .O(cs_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h034403FF)) 
    \ns_OBUF[0]_inst_i_1 
       (.I0(CO1),
        .I1(cs__0),
        .I2(CO2),
        .I3(cs_OBUF[1]),
        .I4(data_IBUF),
        .O(ns_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2E2A)) 
    \ns_OBUF[1]_inst_i_1 
       (.I0(cs_OBUF[1]),
        .I1(cs__0),
        .I2(data_IBUF),
        .I3(CO1),
        .O(ns_OBUF[1]));
endmodule

(* ECO_CHECKSUM = "fd5423f9" *) 
(* NotValidForBitStream *)
module top
   (clk_16,
    clk_2,
    clk_4,
    clk_8,
    ld1,
    en1,
    en2,
    clr2,
    ns,
    cs,
    Q1,
    Q2,
    ena,
    clk,
    data,
    out_data);
  output clk_16;
  output clk_2;
  output clk_4;
  output clk_8;
  output ld1;
  output en1;
  output en2;
  output clr2;
  output [1:0]ns;
  output [1:0]cs;
  output [3:0]Q1;
  output [3:0]Q2;
  input ena;
  input clk;
  input data;
  output [7:0]out_data;

  wire CLR2;
  wire CO1;
  wire CO2;
  wire EN1;
  wire EN2;
  wire LD1;
  wire [3:0]Q1;
  wire [3:0]Q1_OBUF;
  wire [3:0]Q2;
  wire [3:0]Q2_OBUF;
  wire clk;
  wire clk_16;
  wire clk_16_OBUF;
  wire clk_16_reg_lopt_replica_1;
  wire clk_2;
  wire clk_2_OBUF;
  wire clk_4;
  wire clk_4_OBUF;
  wire clk_8;
  wire clk_8_OBUF;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire clr2;
  wire clr2_OBUF;
  wire [1:0]cs;
  wire [1:0]cs_OBUF;
  wire data;
  wire data_IBUF;
  wire divider16_n_1;
  wire divider16_n_2;
  wire divider16_n_3;
  wire en1;
  wire en1_OBUF;
  wire en2;
  wire en2_OBUF;
  wire ena;
  wire ena_IBUF;
  wire ld1;
  wire ld1_OBUF;
  wire [1:0]ns;
  wire [1:0]ns_OBUF;
  wire [7:0]out_data;
  wire [7:0]out_data_OBUF;
  wire p_0_in;
  wire [7:1]p_1_in;
  wire shift_n_0;
  wire state_n_10;
  wire state_n_8;
  wire state_n_9;

initial begin
 $sdf_annotate("top_tb_time_impl.sdf",,,,"tool_control");
end
  FDRE #(
    .INIT(1'b0)) 
    CO2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Q2_OBUF[3]),
        .Q(CO2),
        .R(1'b0));
  OBUF \Q1_OBUF[0]_inst 
       (.I(Q1_OBUF[0]),
        .O(Q1[0]));
  OBUF \Q1_OBUF[1]_inst 
       (.I(Q1_OBUF[1]),
        .O(Q1[1]));
  OBUF \Q1_OBUF[2]_inst 
       (.I(Q1_OBUF[2]),
        .O(Q1[2]));
  OBUF \Q1_OBUF[3]_inst 
       (.I(Q1_OBUF[3]),
        .O(Q1[3]));
  OBUF \Q2_OBUF[0]_inst 
       (.I(Q2_OBUF[0]),
        .O(Q2[0]));
  OBUF \Q2_OBUF[1]_inst 
       (.I(Q2_OBUF[1]),
        .O(Q2[1]));
  OBUF \Q2_OBUF[2]_inst 
       (.I(Q2_OBUF[2]),
        .O(Q2[2]));
  OBUF \Q2_OBUF[3]_inst 
       (.I(Q2_OBUF[3]),
        .O(Q2[3]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF clk_16_OBUF_inst
       (.I(clk_16_reg_lopt_replica_1),
        .O(clk_16));
  FDRE #(
    .INIT(1'b0)) 
    clk_16_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clk_16_OBUF),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    clk_16_reg_lopt_replica
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in),
        .Q(clk_16_reg_lopt_replica_1),
        .R(1'b0));
  OBUF clk_2_OBUF_inst
       (.I(clk_2_OBUF),
        .O(clk_2));
  FDRE #(
    .INIT(1'b0)) 
    clk_2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(divider16_n_3),
        .Q(clk_2_OBUF),
        .R(1'b0));
  OBUF clk_4_OBUF_inst
       (.I(clk_4_OBUF),
        .O(clk_4));
  FDRE #(
    .INIT(1'b0)) 
    clk_4_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(divider16_n_2),
        .Q(clk_4_OBUF),
        .R(1'b0));
  OBUF clk_8_OBUF_inst
       (.I(clk_8_OBUF),
        .O(clk_8));
  FDRE #(
    .INIT(1'b0)) 
    clk_8_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(divider16_n_1),
        .Q(clk_8_OBUF),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF clr2_OBUF_inst
       (.I(clr2_OBUF),
        .O(clr2));
  FDRE #(
    .INIT(1'b0)) 
    clr2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CLR2),
        .Q(clr2_OBUF),
        .R(1'b0));
  counter74x163 counter1
       (.CO1(CO1),
        .D(state_n_9),
        .E(state_n_10),
        .EN1(EN1),
        .LD1(LD1),
        .Q(Q1_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  counter74x163_0 counter2
       (.CLR2(CLR2),
        .E(EN2),
        .Q2(Q2_OBUF),
        .clk_16_OBUF(clk_16_OBUF));
  OBUF \cs_OBUF[0]_inst 
       (.I(cs_OBUF[0]),
        .O(cs[0]));
  OBUF \cs_OBUF[1]_inst 
       (.I(cs_OBUF[1]),
        .O(cs[1]));
  IBUF data_IBUF_inst
       (.I(data),
        .O(data_IBUF));
  counter74x163_1 divider16
       (.E(ena_IBUF),
        .Q({p_0_in,divider16_n_1,divider16_n_2,divider16_n_3}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  OBUF en1_OBUF_inst
       (.I(en1_OBUF),
        .O(en1));
  FDRE #(
    .INIT(1'b0)) 
    en1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(EN1),
        .Q(en1_OBUF),
        .R(1'b0));
  OBUF en2_OBUF_inst
       (.I(en2_OBUF),
        .O(en2));
  FDRE #(
    .INIT(1'b0)) 
    en2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(EN2),
        .Q(en2_OBUF),
        .R(1'b0));
  IBUF ena_IBUF_inst
       (.I(ena),
        .O(ena_IBUF));
  OBUF ld1_OBUF_inst
       (.I(ld1_OBUF),
        .O(ld1));
  FDRE #(
    .INIT(1'b0)) 
    ld1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(LD1),
        .Q(ld1_OBUF),
        .R(1'b0));
  OBUF \ns_OBUF[0]_inst 
       (.I(ns_OBUF[0]),
        .O(ns[0]));
  OBUF \ns_OBUF[1]_inst 
       (.I(ns_OBUF[1]),
        .O(ns[1]));
  OBUF \out_data_OBUF[0]_inst 
       (.I(out_data_OBUF[0]),
        .O(out_data[0]));
  OBUF \out_data_OBUF[1]_inst 
       (.I(out_data_OBUF[1]),
        .O(out_data[1]));
  OBUF \out_data_OBUF[2]_inst 
       (.I(out_data_OBUF[2]),
        .O(out_data[2]));
  OBUF \out_data_OBUF[3]_inst 
       (.I(out_data_OBUF[3]),
        .O(out_data[3]));
  OBUF \out_data_OBUF[4]_inst 
       (.I(out_data_OBUF[4]),
        .O(out_data[4]));
  OBUF \out_data_OBUF[5]_inst 
       (.I(out_data_OBUF[5]),
        .O(out_data[5]));
  OBUF \out_data_OBUF[6]_inst 
       (.I(out_data_OBUF[6]),
        .O(out_data[6]));
  OBUF \out_data_OBUF[7]_inst 
       (.I(out_data_OBUF[7]),
        .O(out_data[7]));
  shift_register shift
       (.D({shift_n_0,p_1_in}),
        .clk_16_OBUF(clk_16_OBUF),
        .data_IBUF(data_IBUF));
  state_change state
       (.CLR2(CLR2),
        .CO1(CO1),
        .CO2(CO2),
        .D(state_n_9),
        .E(EN2),
        .EN1(EN1),
        .EN1_reg_0(state_n_10),
        .\FSM_sequential_cs_reg[0]_0 (state_n_8),
        .\FSM_sequential_cs_reg[1]_0 (ena_IBUF),
        .LD1(LD1),
        .Q(Q1_OBUF[0]),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cs_OBUF(cs_OBUF),
        .data_IBUF(data_IBUF),
        .ns_OBUF(ns_OBUF));
  tri_state ts
       (.D({shift_n_0,p_1_in}),
        .E(state_n_8),
        .Q(out_data_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module tri_state
   (Q,
    E,
    D,
    clk_IBUF_BUFG);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input clk_IBUF_BUFG;

  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire clk_IBUF_BUFG;

  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_o_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
