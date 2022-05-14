// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Thu May 12 20:15:44 2022
// Host        : OrdiBen running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/leo/TodoPerso/3.FPGA_SOC/Machines_Etats/Feux_tricolore/Feux_tricolore.sim/sim_1/synth/func/xsim/TestBenchFeux_func_synth.v
// Design      : Feux_tricolore
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module Feux_tricolore
   (CLK,
    P,
    N,
    C);
  input CLK;
  input P;
  output [2:0]N;
  output [2:0]C;

  wire [2:0]C;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire [2:0]C_OBUF;
  wire \Combinatoire_Etats.div[0]_i_1_n_0 ;
  wire \Combinatoire_Etats.div[31]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_1 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_2 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_3 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_4 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_5 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_6 ;
  wire \Combinatoire_Etats.div_reg[12]_i_1_n_7 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_1 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_2 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_3 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_4 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_5 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_6 ;
  wire \Combinatoire_Etats.div_reg[16]_i_1_n_7 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_1 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_2 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_3 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_4 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_5 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_6 ;
  wire \Combinatoire_Etats.div_reg[20]_i_1_n_7 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_1 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_2 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_3 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_4 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_5 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_6 ;
  wire \Combinatoire_Etats.div_reg[23]_i_1_n_7 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_1 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_2 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_3 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_4 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_5 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_6 ;
  wire \Combinatoire_Etats.div_reg[28]_i_1_n_7 ;
  wire \Combinatoire_Etats.div_reg[31]_i_2_n_2 ;
  wire \Combinatoire_Etats.div_reg[31]_i_2_n_3 ;
  wire \Combinatoire_Etats.div_reg[31]_i_2_n_5 ;
  wire \Combinatoire_Etats.div_reg[31]_i_2_n_6 ;
  wire \Combinatoire_Etats.div_reg[31]_i_2_n_7 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_1 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_2 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_3 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_4 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_5 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_6 ;
  wire \Combinatoire_Etats.div_reg[4]_i_1_n_7 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_0 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_1 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_2 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_3 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_4 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_5 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_6 ;
  wire \Combinatoire_Etats.div_reg[8]_i_1_n_7 ;
  wire \Combinatoire_Etats.div_reg_n_0_[0] ;
  wire \Combinatoire_Etats.div_reg_n_0_[10] ;
  wire \Combinatoire_Etats.div_reg_n_0_[11] ;
  wire \Combinatoire_Etats.div_reg_n_0_[12] ;
  wire \Combinatoire_Etats.div_reg_n_0_[13] ;
  wire \Combinatoire_Etats.div_reg_n_0_[14] ;
  wire \Combinatoire_Etats.div_reg_n_0_[15] ;
  wire \Combinatoire_Etats.div_reg_n_0_[16] ;
  wire \Combinatoire_Etats.div_reg_n_0_[17] ;
  wire \Combinatoire_Etats.div_reg_n_0_[18] ;
  wire \Combinatoire_Etats.div_reg_n_0_[19] ;
  wire \Combinatoire_Etats.div_reg_n_0_[1] ;
  wire \Combinatoire_Etats.div_reg_n_0_[20] ;
  wire \Combinatoire_Etats.div_reg_n_0_[21] ;
  wire \Combinatoire_Etats.div_reg_n_0_[22] ;
  wire \Combinatoire_Etats.div_reg_n_0_[23] ;
  wire \Combinatoire_Etats.div_reg_n_0_[24] ;
  wire \Combinatoire_Etats.div_reg_n_0_[25] ;
  wire \Combinatoire_Etats.div_reg_n_0_[26] ;
  wire \Combinatoire_Etats.div_reg_n_0_[27] ;
  wire \Combinatoire_Etats.div_reg_n_0_[28] ;
  wire \Combinatoire_Etats.div_reg_n_0_[29] ;
  wire \Combinatoire_Etats.div_reg_n_0_[2] ;
  wire \Combinatoire_Etats.div_reg_n_0_[30] ;
  wire \Combinatoire_Etats.div_reg_n_0_[31] ;
  wire \Combinatoire_Etats.div_reg_n_0_[3] ;
  wire \Combinatoire_Etats.div_reg_n_0_[4] ;
  wire \Combinatoire_Etats.div_reg_n_0_[5] ;
  wire \Combinatoire_Etats.div_reg_n_0_[6] ;
  wire \Combinatoire_Etats.div_reg_n_0_[7] ;
  wire \Combinatoire_Etats.div_reg_n_0_[8] ;
  wire \Combinatoire_Etats.div_reg_n_0_[9] ;
  wire [2:0]Etat_future;
  wire [2:0]Etat_future__0;
  wire \FSM_sequential_Etat_future[1]_i_2_n_0 ;
  wire \FSM_sequential_Etat_future[1]_i_3_n_0 ;
  wire \FSM_sequential_Etat_future[2]_i_2_n_0 ;
  wire \FSM_sequential_Etat_future[2]_i_3_n_0 ;
  wire \FSM_sequential_Etat_future[2]_i_4_n_0 ;
  wire \FSM_sequential_Etat_future[2]_i_5_n_0 ;
  wire \FSM_sequential_Etat_future[2]_i_6_n_0 ;
  wire \FSM_sequential_Etat_future[2]_i_7_n_0 ;
  wire \FSM_sequential_Etat_future[2]_i_8_n_0 ;
  wire [2:0]N;
  wire [2:0]N_OBUF;
  wire P;
  wire P_IBUF;
  wire [27:24]div;
  wire [2:0]etat_present;
  wire [3:2]\NLW_Combinatoire_Etats.div_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_Combinatoire_Etats.div_reg[31]_i_2_O_UNCONNECTED ;

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF \C_OBUF[0]_inst 
       (.I(C_OBUF[0]),
        .O(C[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \C_OBUF[0]_inst_i_1 
       (.I0(etat_present[0]),
        .I1(etat_present[1]),
        .I2(etat_present[2]),
        .O(C_OBUF[0]));
  OBUF \C_OBUF[1]_inst 
       (.I(C_OBUF[1]),
        .O(C[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \C_OBUF[1]_inst_i_1 
       (.I0(etat_present[1]),
        .I1(etat_present[2]),
        .I2(etat_present[0]),
        .O(C_OBUF[1]));
  OBUF \C_OBUF[2]_inst 
       (.I(C_OBUF[2]),
        .O(C[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \C_OBUF[2]_inst_i_1 
       (.I0(etat_present[0]),
        .I1(etat_present[1]),
        .I2(etat_present[2]),
        .O(C_OBUF[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \Combinatoire_Etats.div[0]_i_1 
       (.I0(\Combinatoire_Etats.div_reg_n_0_[0] ),
        .O(\Combinatoire_Etats.div[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22AAAA8A)) 
    \Combinatoire_Etats.div[24]_i_1 
       (.I0(\Combinatoire_Etats.div_reg[23]_i_1_n_4 ),
        .I1(etat_present[1]),
        .I2(P_IBUF),
        .I3(etat_present[0]),
        .I4(etat_present[2]),
        .O(div[24]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h22AAAA8A)) 
    \Combinatoire_Etats.div[27]_i_1 
       (.I0(\Combinatoire_Etats.div_reg[28]_i_1_n_5 ),
        .I1(etat_present[1]),
        .I2(P_IBUF),
        .I3(etat_present[0]),
        .I4(etat_present[2]),
        .O(div[27]));
  LUT6 #(
    .INIT(64'hFCFC5C5C5C5CCFC0)) 
    \Combinatoire_Etats.div[31]_i_1 
       (.I0(\FSM_sequential_Etat_future[2]_i_2_n_0 ),
        .I1(\FSM_sequential_Etat_future[1]_i_2_n_0 ),
        .I2(etat_present[1]),
        .I3(P_IBUF),
        .I4(etat_present[0]),
        .I5(etat_present[2]),
        .O(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div[0]_i_1_n_0 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[0] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[10] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[12]_i_1_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[10] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[11] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[12]_i_1_n_5 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[11] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[12] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[12]_i_1_n_4 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[12] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[12]_i_1 
       (.CI(\Combinatoire_Etats.div_reg[8]_i_1_n_0 ),
        .CO({\Combinatoire_Etats.div_reg[12]_i_1_n_0 ,\Combinatoire_Etats.div_reg[12]_i_1_n_1 ,\Combinatoire_Etats.div_reg[12]_i_1_n_2 ,\Combinatoire_Etats.div_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Combinatoire_Etats.div_reg[12]_i_1_n_4 ,\Combinatoire_Etats.div_reg[12]_i_1_n_5 ,\Combinatoire_Etats.div_reg[12]_i_1_n_6 ,\Combinatoire_Etats.div_reg[12]_i_1_n_7 }),
        .S({\Combinatoire_Etats.div_reg_n_0_[12] ,\Combinatoire_Etats.div_reg_n_0_[11] ,\Combinatoire_Etats.div_reg_n_0_[10] ,\Combinatoire_Etats.div_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[13] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[16]_i_1_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[13] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[14] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[16]_i_1_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[14] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[15] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[16]_i_1_n_5 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[15] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[16] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[16]_i_1_n_4 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[16] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[16]_i_1 
       (.CI(\Combinatoire_Etats.div_reg[12]_i_1_n_0 ),
        .CO({\Combinatoire_Etats.div_reg[16]_i_1_n_0 ,\Combinatoire_Etats.div_reg[16]_i_1_n_1 ,\Combinatoire_Etats.div_reg[16]_i_1_n_2 ,\Combinatoire_Etats.div_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Combinatoire_Etats.div_reg[16]_i_1_n_4 ,\Combinatoire_Etats.div_reg[16]_i_1_n_5 ,\Combinatoire_Etats.div_reg[16]_i_1_n_6 ,\Combinatoire_Etats.div_reg[16]_i_1_n_7 }),
        .S({\Combinatoire_Etats.div_reg_n_0_[16] ,\Combinatoire_Etats.div_reg_n_0_[15] ,\Combinatoire_Etats.div_reg_n_0_[14] ,\Combinatoire_Etats.div_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[17] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[20]_i_1_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[17] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[18] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[20]_i_1_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[18] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[19] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[20]_i_1_n_5 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[19] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[4]_i_1_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[1] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[20] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[20]_i_1_n_4 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[20] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[20]_i_1 
       (.CI(\Combinatoire_Etats.div_reg[16]_i_1_n_0 ),
        .CO({\Combinatoire_Etats.div_reg[20]_i_1_n_0 ,\Combinatoire_Etats.div_reg[20]_i_1_n_1 ,\Combinatoire_Etats.div_reg[20]_i_1_n_2 ,\Combinatoire_Etats.div_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Combinatoire_Etats.div_reg[20]_i_1_n_4 ,\Combinatoire_Etats.div_reg[20]_i_1_n_5 ,\Combinatoire_Etats.div_reg[20]_i_1_n_6 ,\Combinatoire_Etats.div_reg[20]_i_1_n_7 }),
        .S({\Combinatoire_Etats.div_reg_n_0_[20] ,\Combinatoire_Etats.div_reg_n_0_[19] ,\Combinatoire_Etats.div_reg_n_0_[18] ,\Combinatoire_Etats.div_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[21] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[23]_i_1_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[21] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[22] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[23]_i_1_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[22] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[23] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[23]_i_1_n_5 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[23] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[23]_i_1 
       (.CI(\Combinatoire_Etats.div_reg[20]_i_1_n_0 ),
        .CO({\Combinatoire_Etats.div_reg[23]_i_1_n_0 ,\Combinatoire_Etats.div_reg[23]_i_1_n_1 ,\Combinatoire_Etats.div_reg[23]_i_1_n_2 ,\Combinatoire_Etats.div_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Combinatoire_Etats.div_reg[23]_i_1_n_4 ,\Combinatoire_Etats.div_reg[23]_i_1_n_5 ,\Combinatoire_Etats.div_reg[23]_i_1_n_6 ,\Combinatoire_Etats.div_reg[23]_i_1_n_7 }),
        .S({\Combinatoire_Etats.div_reg_n_0_[24] ,\Combinatoire_Etats.div_reg_n_0_[23] ,\Combinatoire_Etats.div_reg_n_0_[22] ,\Combinatoire_Etats.div_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[24] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(div[24]),
        .Q(\Combinatoire_Etats.div_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[25] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[28]_i_1_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[25] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[26] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[28]_i_1_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[26] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[27] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(div[27]),
        .Q(\Combinatoire_Etats.div_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[28] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[28]_i_1_n_4 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[28] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[28]_i_1 
       (.CI(\Combinatoire_Etats.div_reg[23]_i_1_n_0 ),
        .CO({\Combinatoire_Etats.div_reg[28]_i_1_n_0 ,\Combinatoire_Etats.div_reg[28]_i_1_n_1 ,\Combinatoire_Etats.div_reg[28]_i_1_n_2 ,\Combinatoire_Etats.div_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Combinatoire_Etats.div_reg[28]_i_1_n_4 ,\Combinatoire_Etats.div_reg[28]_i_1_n_5 ,\Combinatoire_Etats.div_reg[28]_i_1_n_6 ,\Combinatoire_Etats.div_reg[28]_i_1_n_7 }),
        .S({\Combinatoire_Etats.div_reg_n_0_[28] ,\Combinatoire_Etats.div_reg_n_0_[27] ,\Combinatoire_Etats.div_reg_n_0_[26] ,\Combinatoire_Etats.div_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[29] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[31]_i_2_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[29] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[4]_i_1_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[2] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[30] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[31]_i_2_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[30] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[31] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[31]_i_2_n_5 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[31] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[31]_i_2 
       (.CI(\Combinatoire_Etats.div_reg[28]_i_1_n_0 ),
        .CO({\NLW_Combinatoire_Etats.div_reg[31]_i_2_CO_UNCONNECTED [3:2],\Combinatoire_Etats.div_reg[31]_i_2_n_2 ,\Combinatoire_Etats.div_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Combinatoire_Etats.div_reg[31]_i_2_O_UNCONNECTED [3],\Combinatoire_Etats.div_reg[31]_i_2_n_5 ,\Combinatoire_Etats.div_reg[31]_i_2_n_6 ,\Combinatoire_Etats.div_reg[31]_i_2_n_7 }),
        .S({1'b0,\Combinatoire_Etats.div_reg_n_0_[31] ,\Combinatoire_Etats.div_reg_n_0_[30] ,\Combinatoire_Etats.div_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[3] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[4]_i_1_n_5 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[3] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[4] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[4]_i_1_n_4 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[4] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\Combinatoire_Etats.div_reg[4]_i_1_n_0 ,\Combinatoire_Etats.div_reg[4]_i_1_n_1 ,\Combinatoire_Etats.div_reg[4]_i_1_n_2 ,\Combinatoire_Etats.div_reg[4]_i_1_n_3 }),
        .CYINIT(\Combinatoire_Etats.div_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Combinatoire_Etats.div_reg[4]_i_1_n_4 ,\Combinatoire_Etats.div_reg[4]_i_1_n_5 ,\Combinatoire_Etats.div_reg[4]_i_1_n_6 ,\Combinatoire_Etats.div_reg[4]_i_1_n_7 }),
        .S({\Combinatoire_Etats.div_reg_n_0_[4] ,\Combinatoire_Etats.div_reg_n_0_[3] ,\Combinatoire_Etats.div_reg_n_0_[2] ,\Combinatoire_Etats.div_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[5] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[8]_i_1_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[5] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[6] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[8]_i_1_n_6 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[6] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[7] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[8]_i_1_n_5 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[7] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[8] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[8]_i_1_n_4 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[8] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Combinatoire_Etats.div_reg[8]_i_1 
       (.CI(\Combinatoire_Etats.div_reg[4]_i_1_n_0 ),
        .CO({\Combinatoire_Etats.div_reg[8]_i_1_n_0 ,\Combinatoire_Etats.div_reg[8]_i_1_n_1 ,\Combinatoire_Etats.div_reg[8]_i_1_n_2 ,\Combinatoire_Etats.div_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\Combinatoire_Etats.div_reg[8]_i_1_n_4 ,\Combinatoire_Etats.div_reg[8]_i_1_n_5 ,\Combinatoire_Etats.div_reg[8]_i_1_n_6 ,\Combinatoire_Etats.div_reg[8]_i_1_n_7 }),
        .S({\Combinatoire_Etats.div_reg_n_0_[8] ,\Combinatoire_Etats.div_reg_n_0_[7] ,\Combinatoire_Etats.div_reg_n_0_[6] ,\Combinatoire_Etats.div_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \Combinatoire_Etats.div_reg[9] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\Combinatoire_Etats.div_reg[12]_i_1_n_7 ),
        .Q(\Combinatoire_Etats.div_reg_n_0_[9] ),
        .R(\Combinatoire_Etats.div[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000FF0CFC00AFA)) 
    \FSM_sequential_Etat_future[0]_i_1 
       (.I0(P_IBUF),
        .I1(\FSM_sequential_Etat_future[2]_i_2_n_0 ),
        .I2(etat_present[0]),
        .I3(\FSM_sequential_Etat_future[1]_i_2_n_0 ),
        .I4(etat_present[1]),
        .I5(etat_present[2]),
        .O(Etat_future__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAFC0C0)) 
    \FSM_sequential_Etat_future[1]_i_1 
       (.I0(\FSM_sequential_Etat_future[2]_i_2_n_0 ),
        .I1(\FSM_sequential_Etat_future[1]_i_2_n_0 ),
        .I2(etat_present[0]),
        .I3(etat_present[2]),
        .I4(etat_present[1]),
        .O(Etat_future__0[1]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_Etat_future[1]_i_2 
       (.I0(\FSM_sequential_Etat_future[2]_i_3_n_0 ),
        .I1(\FSM_sequential_Etat_future[2]_i_4_n_0 ),
        .I2(\FSM_sequential_Etat_future[2]_i_5_n_0 ),
        .I3(\FSM_sequential_Etat_future[1]_i_3_n_0 ),
        .I4(\FSM_sequential_Etat_future[2]_i_7_n_0 ),
        .I5(\FSM_sequential_Etat_future[2]_i_8_n_0 ),
        .O(\FSM_sequential_Etat_future[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_Etat_future[1]_i_3 
       (.I0(\Combinatoire_Etats.div_reg[4]_i_1_n_7 ),
        .I1(\Combinatoire_Etats.div_reg[4]_i_1_n_5 ),
        .I2(\Combinatoire_Etats.div_reg[4]_i_1_n_6 ),
        .I3(\Combinatoire_Etats.div_reg_n_0_[0] ),
        .O(\FSM_sequential_Etat_future[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hAA62)) 
    \FSM_sequential_Etat_future[2]_i_1 
       (.I0(etat_present[2]),
        .I1(etat_present[1]),
        .I2(etat_present[0]),
        .I3(\FSM_sequential_Etat_future[2]_i_2_n_0 ),
        .O(Etat_future__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \FSM_sequential_Etat_future[2]_i_2 
       (.I0(\FSM_sequential_Etat_future[2]_i_3_n_0 ),
        .I1(\FSM_sequential_Etat_future[2]_i_4_n_0 ),
        .I2(\FSM_sequential_Etat_future[2]_i_5_n_0 ),
        .I3(\FSM_sequential_Etat_future[2]_i_6_n_0 ),
        .I4(\FSM_sequential_Etat_future[2]_i_7_n_0 ),
        .I5(\FSM_sequential_Etat_future[2]_i_8_n_0 ),
        .O(\FSM_sequential_Etat_future[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_Etat_future[2]_i_3 
       (.I0(\Combinatoire_Etats.div_reg[23]_i_1_n_5 ),
        .I1(\Combinatoire_Etats.div_reg[23]_i_1_n_6 ),
        .I2(\Combinatoire_Etats.div_reg[23]_i_1_n_7 ),
        .I3(\Combinatoire_Etats.div_reg[20]_i_1_n_4 ),
        .I4(\Combinatoire_Etats.div_reg[20]_i_1_n_5 ),
        .I5(\Combinatoire_Etats.div_reg[20]_i_1_n_6 ),
        .O(\FSM_sequential_Etat_future[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_Etat_future[2]_i_4 
       (.I0(\Combinatoire_Etats.div_reg[20]_i_1_n_7 ),
        .I1(\Combinatoire_Etats.div_reg[16]_i_1_n_4 ),
        .I2(\Combinatoire_Etats.div_reg[16]_i_1_n_5 ),
        .I3(\Combinatoire_Etats.div_reg[16]_i_1_n_6 ),
        .I4(\Combinatoire_Etats.div_reg[16]_i_1_n_7 ),
        .I5(\Combinatoire_Etats.div_reg[12]_i_1_n_4 ),
        .O(\FSM_sequential_Etat_future[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_Etat_future[2]_i_5 
       (.I0(\Combinatoire_Etats.div_reg[8]_i_1_n_6 ),
        .I1(\Combinatoire_Etats.div_reg[12]_i_1_n_7 ),
        .I2(\Combinatoire_Etats.div_reg[8]_i_1_n_4 ),
        .I3(\Combinatoire_Etats.div_reg[8]_i_1_n_5 ),
        .I4(\Combinatoire_Etats.div_reg[12]_i_1_n_5 ),
        .I5(\Combinatoire_Etats.div_reg[12]_i_1_n_6 ),
        .O(\FSM_sequential_Etat_future[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_Etat_future[2]_i_6 
       (.I0(\Combinatoire_Etats.div_reg[4]_i_1_n_7 ),
        .I1(\Combinatoire_Etats.div_reg_n_0_[0] ),
        .I2(\Combinatoire_Etats.div_reg[4]_i_1_n_5 ),
        .I3(\Combinatoire_Etats.div_reg[4]_i_1_n_6 ),
        .O(\FSM_sequential_Etat_future[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_Etat_future[2]_i_7 
       (.I0(\Combinatoire_Etats.div_reg[23]_i_1_n_4 ),
        .I1(\Combinatoire_Etats.div_reg[28]_i_1_n_5 ),
        .I2(\Combinatoire_Etats.div_reg[28]_i_1_n_6 ),
        .I3(\Combinatoire_Etats.div_reg[28]_i_1_n_7 ),
        .I4(\Combinatoire_Etats.div_reg[31]_i_2_n_7 ),
        .I5(\Combinatoire_Etats.div_reg[28]_i_1_n_4 ),
        .O(\FSM_sequential_Etat_future[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_Etat_future[2]_i_8 
       (.I0(\Combinatoire_Etats.div_reg[31]_i_2_n_5 ),
        .I1(\Combinatoire_Etats.div_reg[4]_i_1_n_4 ),
        .I2(\Combinatoire_Etats.div_reg[31]_i_2_n_6 ),
        .I3(\Combinatoire_Etats.div_reg[8]_i_1_n_7 ),
        .O(\FSM_sequential_Etat_future[2]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Etat_future_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Etat_future__0[0]),
        .Q(Etat_future[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Etat_future_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Etat_future__0[1]),
        .Q(Etat_future[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Etat_future_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Etat_future__0[2]),
        .Q(Etat_future[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "etat1:001,etat2:010,etat3:011,etat4:100,etat5:101,etat6:110,etat0:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_etat_present_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Etat_future[0]),
        .Q(etat_present[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "etat1:001,etat2:010,etat3:011,etat4:100,etat5:101,etat6:110,etat0:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_etat_present_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Etat_future[1]),
        .Q(etat_present[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "etat1:001,etat2:010,etat3:011,etat4:100,etat5:101,etat6:110,etat0:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_etat_present_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .D(Etat_future[2]),
        .Q(etat_present[2]),
        .R(1'b0));
  OBUF \N_OBUF[0]_inst 
       (.I(N_OBUF[0]),
        .O(N[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h41)) 
    \N_OBUF[0]_inst_i_1 
       (.I0(etat_present[0]),
        .I1(etat_present[1]),
        .I2(etat_present[2]),
        .O(N_OBUF[0]));
  OBUF \N_OBUF[1]_inst 
       (.I(N_OBUF[1]),
        .O(N[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \N_OBUF[1]_inst_i_1 
       (.I0(etat_present[0]),
        .I1(etat_present[1]),
        .I2(etat_present[2]),
        .O(N_OBUF[1]));
  OBUF \N_OBUF[2]_inst 
       (.I(N_OBUF[2]),
        .O(N[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \N_OBUF[2]_inst_i_1 
       (.I0(etat_present[2]),
        .I1(etat_present[1]),
        .O(N_OBUF[2]));
  IBUF P_IBUF_inst
       (.I(P),
        .O(P_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
