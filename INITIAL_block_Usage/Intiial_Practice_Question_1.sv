//✔ Question : Assume System Consist of two global signals resetn and clk. Use an initial block to initialize clk to 1'b0 and resetn to 1'b0.
//User must keep resetn in an active low state for 60 nSec at the start of the simulation and then make active high. Assume `timescale 1ns/1psShare your SV Code.

`timescale 1ns/1ps

module system_signals;

  reg clk;
  reg resetn;

  initial begin
    clk = 1'b0;
    resetn = 1'b0;
    #60;
    resetn = 1'b1;
  end

  always #5 clk = ~clk;

endmodule
