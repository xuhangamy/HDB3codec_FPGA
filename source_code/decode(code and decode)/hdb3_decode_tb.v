`timescale 1ns/1ns

module hdb3_decode_tb();

  reg r_rst_n;
  reg r_clk;
  
  reg r_data;

  wire w_data;
  
  initial
  begin
    r_rst_n=1'b0;
  #10 r_rst_n=1'b1;
  end
  
  initial
  begin
    r_clk=1'b0;
    forever
      #1 r_clk=~r_clk;
  end
  
  initial
  begin
      r_data=1'b0;
   #10 r_data=1'b1;
     forever
     begin
     #2 r_data=1'b0;
     #10 r_data=1'b1;
     #2 r_data=1'b0;
     #10 r_data=1'b1;
     #2 r_data=1'b0;
     #10 r_data=1'b1;
     #2 r_data=1'b1;
     end
  end
  

 
 hdb3_decode I1_hdb3_decode(
    .i_rst_n(r_rst_n),
    .i_clk(r_clk),
    .i_data(r_data),
    .o_data(w_data)
 );
 
 endmodule
 
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     