`timescale 1ns/1ns

module hdb3_plug_b(
input i_rst_n,
input i_clk,
input [1:0] i_plug_v_code,
output [1:0] o_plug_b_code
);

reg[1:0] r_plug_b_code;
reg[4:0] r_plug_b_code_h;
reg[4:0] r_plug_b_code_l;
reg[2:0] r_data_shift;
reg r_not_0_parity;

assign o_plug_b_code ={r_plug_b_code_h[4],r_plug_b_code_l[4]};

always@(posedge i_clk,negedge i_rst_n)
begin
  if(1'b0==i_rst_n)
  begin
    r_not_0_parity<=1'b0;
  end
  else
  begin
    if(2'b10==i_plug_v_code)
      r_not_0_parity<=1'b0;
    else if(2'b01==i_plug_v_code)
      r_not_0_parity<=~r_not_0_parity;
  end
 end
 
 always@(posedge i_clk,negedge i_rst_n)
 begin
   if(1'b0==i_rst_n)
   begin
     r_plug_b_code_h<=5'b0000;
     r_plug_b_code_l<=5'b0000;
   end
   else
   begin
     if(2'b10==i_plug_v_code&&1'b0==r_not_0_parity)
     begin
       r_plug_b_code_h[0]<=1'b1;
       r_plug_b_code_h[1]<=r_plug_b_code_h[0];
       r_plug_b_code_h[2]<=r_plug_b_code_h[1];
       r_plug_b_code_h[3]<=1'b1;
       r_plug_b_code_h[4]<=r_plug_b_code_h[3];
       r_plug_b_code_l[0]<=1'b0;
       r_plug_b_code_l[1]<=r_plug_b_code_l[0];
       r_plug_b_code_l[2]<=r_plug_b_code_l[1];
       r_plug_b_code_l[3]<=1'b1;
       r_plug_b_code_l[4]<=r_plug_b_code_l[3];
     end
     else
     begin
       r_plug_b_code_h<={r_plug_b_code_h[3:0],i_plug_v_code[1]};
       r_plug_b_code_l<={r_plug_b_code_l[3:0],i_plug_v_code[0]};
     end
   end
 end
 
 endmodule
 

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    