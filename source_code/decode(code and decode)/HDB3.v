`timescale 1ns/1ns

module HDB3(
  input i_rst_n;
  input i_clk;
  
  input i_data;
  output o_data;
);

wire [1:0] i_hdb3_code;

hdb3_code I1_hdb3_code(
  .i_rst_n(i_rst_n),
  .i_clk(i_clk),
  .i_data(i_data),
  .o_hdb3_code(i_hdb3_code)
);
