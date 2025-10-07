`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
class first;
  
  reg [2:0] data; 
  reg [1:0] data2;
  
  
endclass


module tb_q;
  
  first f;  // handler or instance creation
  
  initial begin
    f = new(); // constructer
    #1;
    $display("Value of data : %0d and data2 : %0d",f.data, f.data2);
  end
  
  
  
endmodule
