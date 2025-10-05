In Verilog We Know that to implement the always block for Combinational, Sequential And Latches Following are the syntax :-


1. Combinational Logic// For Verilog                                                                      ✔ 1. Combinational Logic// For System Verilog
                                                                                                         always_comb                            
always @(*) begin
  out = a & b;                                                                                          
end
// @(*) means "whenever any input changes"                                                             
// Used for combinational logic (like gates)

// Replaces assign in some cases


2. Sequential Logic (Flip-Flops)// For Verilog
                                                                                                   ✔2. Flip Fop (Sequential LOGIC ) // For System Verilog
                                                                                                             always_ff @(posedge clk)
   always @(posedge clk or negedge resetn) begin
  if (!resetn)
    q <= 0;
  else
    q <= d;
end


3. for level-sensitive latches  // For Verilog                                                      ✔3. For Latches //// For System Verilog
                                                                                                                      always_latch
   always @(enable or d)



   | Style                            | Works in SystemVerilog? | Recommended? | Why?                             |
| -------------------------------- | ----------------------- | ------------ | -------------------------------- |

| `always @(*)`                    | ✅ Yes                   | ❌ Not ideal  | Less strict, prone to bugs       |



| `always @(posedge clk)`          | ✅ Yes                   | ❌ Not ideal  | May accidentally mix logic types |






| `always @(a or b)` (for latches) | ✅ Yes                   | ❌ Risky      | Can infer unintended latches     |



      
