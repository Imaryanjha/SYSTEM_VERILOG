In Verilog We Know that to implement the always block for Combinational, Sequential And Latches Following are the syntax :-


1. Combinational Logic

always @(*) begin
  out = a & b;
end
// @(*) means "whenever any input changes"

// Used for combinational logic (like gates)

// Replaces assign in some cases


2. Sequential Logic (Flip-Flops)

   always @(posedge clk or negedge resetn) begin
  if (!resetn)
    q <= 0;
  else
    q <= d;
end


3. for level-sensitive latches   
   always @(enable or d)
      
