//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Fri May  6 17:30:53 2022
//Host        : OrdiBen running 64-bit major release  (build 9200)
//Command     : generate_target UART_Schem_wrapper.bd
//Design      : UART_Schem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module UART_Schem_wrapper
   (clk,
    r_data,
    rd_uart,
    reset,
    rx,
    rx_empty,
    tx,
    tx_full,
    w_data,
    wr_uart);
  input clk;
  output [7:0]r_data;
  input rd_uart;
  input reset;
  input rx;
  output rx_empty;
  output tx;
  output tx_full;
  input [7:0]w_data;
  input wr_uart;

  wire clk;
  wire [7:0]r_data;
  wire rd_uart;
  wire reset;
  wire rx;
  wire rx_empty;
  wire tx;
  wire tx_full;
  wire [7:0]w_data;
  wire wr_uart;

  UART_Schem UART_Schem_i
       (.clk(clk),
        .r_data(r_data),
        .rd_uart(rd_uart),
        .reset(reset),
        .rx(rx),
        .rx_empty(rx_empty),
        .tx(tx),
        .tx_full(tx_full),
        .w_data(w_data),
        .wr_uart(wr_uart));
endmodule
