`timescale 1ns / 1ps

module tb();

/////✔global signal clk , rst
  
  reg clk;
  reg rst;
  
  reg [3:0] temp;
  
  //✔ Initialized Global Variable
  initial begin
    clk = 1'b0;
    rst = 1'b0;
  end

  
  ////2. ✔Random signal for data/ control 
  
  initial begin
    rst = 1'b1;
    #30;
    rst = 1'b0;
  end
  
  
  initial begin
  temp = 4'b0100;
  #10;
  temp = 4'b1100;
  #10; 
  temp = 4'b0011;
  #10;  
  end
  
  
  ///////3. ✔System Task at the start of simulation
  initial begin
    $dumpfile("dump.vcd"); //  $dumpfile("dump.vcd");

                                //Creates a Value Change Dump (VCD) file named dump.vcd

                                //This file will store all signal value changes during simulation
                                
    
    $dumpvars;            //   $dumpvars;

                        //  Dumps ALL variables in your design to the VCD file

                        //Records every signal, register, wire, etc.
  end

  
  /////4. ✔Analyzing Values of variable on COnsole
  initial begin
    $monitor("Temp : %0d at time : %0t", temp, $time);
  end

  
  
  ///5. ✔Stop simulation by forcefully calling $finish
  initial begin
    #200;
    $finish();
  end
  
endmodule
