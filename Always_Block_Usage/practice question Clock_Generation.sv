//✨question----  Assume `timescale 1ps/1ps. Generate a 25 MHz square wave waveform for the Signal clk --------------//

/* t= 1/f
 t= 1/25*10^6 = 40ns = 40000ps
half period = 20000ps */

`timescale 1ps/1ps

module clk_gen;
  reg clk;

  initial begin
    clk = 0;
    forever #20000 clk = ~clk;  // 20,000 ps = 20 ns → 25 MHz clock
  end
endmodule
