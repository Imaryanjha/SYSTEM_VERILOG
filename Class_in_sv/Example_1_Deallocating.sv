`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
class first;
  
  reg [2:0] data; 
  reg [1:0] data2;
  
  
endclass


module tb_q;
  
  first f;
  
  initial begin
    f = new(); 
    f.data = 3'b110; // adding value to the data
    f.data2 = 2'b11;// adding value to the data2
    
   //✔
    f = null; // delocating the data member
    
    #1;
    $display("Value of data : %0d and data2 : %0d",f.data, f.data2);
  end
  
  
  
endmodule
