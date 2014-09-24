`timescale 1ns/1ns

module hdb3_d2t(
  input i_rst_n,
  input i_clk,
  input [1:0] i_plug_b_code,
  output reg [1:0] o_hdb3_code
 );
 
 reg r_not_0_parity;
 
 always@(posedge i_clk,negedge i_rst_n)
 begin
   if(1'b0==i_rst_n)
   begin
     r_not_0_parity<=1'b0;
     o_hdb3_code<=2'b0;
   end
   else
   begin
     if(2'b01==i_plug_b_code)
       if(1'b1==r_not_0_parity)
       begin
         o_hdb3_code<=2'b01;
         r_not_0_parity<=~r_not_0_parity;
       end
       else
       begin
         o_hdb3_code<=2'b10;
         r_not_0_parity<=~r_not_0_parity;
       end
     else if(2'b10==i_plug_b_code)
       if(1'b1==r_not_0_parity)
       begin
         o_hdb3_code<=2'b10;
         r_not_0_parity<=~r_not_0_parity;
       end
       else
       begin
         o_hdb3_code<=2'b01;
         r_not_0_parity<=~r_not_0_parity;
       end
     else if(2'b11==i_plug_b_code)
       if(1'b1==r_not_0_parity)
       begin
         o_hdb3_code<=2'b01;
         r_not_0_parity<=~r_not_0_parity;
       end
       else
       begin
         o_hdb3_code<=2'b10;
         r_not_0_parity<=~r_not_0_parity;
       end
     else
       begin
         o_hdb3_code<=2'b0;
         r_not_0_parity<=~r_not_0_parity;
       end
    end
  end
 endmodule
  
         
    
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         