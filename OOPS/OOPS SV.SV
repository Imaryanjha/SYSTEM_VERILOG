`timescale 1ps/1ps

module tb();
//unique value
  int arr_1[5] = '{default:0};
  
 // repetition operator {{}} 
 
  int arr_2[5] = '{5{1}};
  
  // unitialized
  int arr_3[2];

  initial begin
    $display ("arr_1: %p", arr_1);
    $display ("arr_2: %p", arr_2);
    $display ("arr_3: %p", arr_3);
    
  end
endmodule
