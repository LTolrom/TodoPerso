//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Fri May  6 17:30:53 2022
//Host        : OrdiBen running 64-bit major release  (build 9200)
//Command     : generate_target UART_Schem.bd
//Design      : UART_Schem
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "UART_Schem,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=UART_Schem,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "UART_Schem.hwdef" *) 
module UART_Schem
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

  wire baud_gen_0_baud_ticks;
  wire clk_1;
  wire fifo_rx_empty;
  wire [7:0]fifo_rx_read_data;
  wire fifo_tx_empty;
  wire fifo_tx_full;
  wire [7:0]fifo_tx_read_data;
  wire rd_uart_1;
  wire reset_1;
  wire rx_1;
  wire [7:0]uart_rx_0_d_out;
  wire uart_rx_0_rx_done_tick;
  wire uart_tx_0_tx;
  wire uart_tx_0_tx_done_tick;
  wire [7:0]w_data_1;
  wire wr_uart_1;

  assign clk_1 = clk;
  assign r_data[7:0] = fifo_rx_read_data;
  assign rd_uart_1 = rd_uart;
  assign reset_1 = reset;
  assign rx_1 = rx;
  assign rx_empty = fifo_rx_empty;
  assign tx = uart_tx_0_tx;
  assign tx_full = fifo_tx_full;
  assign w_data_1 = w_data[7:0];
  assign wr_uart_1 = wr_uart;
  UART_Schem_baud_gen_0_0 baud_gen_0
       (.baud_ticks(baud_gen_0_baud_ticks),
        .clk(clk_1),
        .reset(reset_1));
  UART_Schem_fifo_0_1 fifo_rx
       (.clk(clk_1),
        .empty(fifo_rx_empty),
        .read(rd_uart_1),
        .read_data(fifo_rx_read_data),
        .reset(reset_1),
        .write(uart_rx_0_rx_done_tick),
        .write_data(uart_rx_0_d_out));
  UART_Schem_fifo_0_2 fifo_tx
       (.clk(clk_1),
        .empty(fifo_tx_empty),
        .full(fifo_tx_full),
        .read(uart_tx_0_tx_done_tick),
        .read_data(fifo_tx_read_data),
        .reset(reset_1),
        .write(wr_uart_1),
        .write_data(w_data_1));
  UART_Schem_uart_rx_0_0 uart_rx_0
       (.baud_rate(baud_gen_0_baud_ticks),
        .clk(clk_1),
        .d_out(uart_rx_0_d_out),
        .reset(reset_1),
        .rx(rx_1),
        .rx_done_tick(uart_rx_0_rx_done_tick));
  UART_Schem_uart_tx_0_0 uart_tx_0
       (.baud_rate(baud_gen_0_baud_ticks),
        .clk(clk_1),
        .d_in(fifo_tx_read_data),
        .reset(reset_1),
        .tx(uart_tx_0_tx),
        .tx_done_tick(uart_tx_0_tx_done_tick),
        .tx_start(fifo_tx_empty));
endmodule
