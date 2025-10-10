# Verilog vs SystemVerilog: Always Block Usage

This document summarizes the implementation of **always blocks** in **Verilog** and **SystemVerilog** for combinational logic, sequential logic (flip-flops), and level-sensitive latches.

---

## 1. Combinational Logic

### Verilog
```verilog
always @(*) begin
  out = a & b;
end
```

## System Verilog
```systemverilog
always_comb begin
  out = a & b;
end
```

## 2. Sequential Logic (Flip-Flops)
```Verilog
always @(posedge clk or negedge resetn) begin
  if (!resetn)
    q <= 0;
  else
    q <= d;
end
```
## SystemVerilog
``` SystemVerilog
always_ff @(posedge clk) begin
  if (!resetn)
    q <= 0;
  else
    q <= d;
end
```

## 3. Level-Sensitive Latches

### Verilog
```verilog
always @(enable or d) begin
  if (enable)
    q = d;
end
```

### SystemVerilog
```systemverilog
always_latch begin
  if (enable)
    q = d;
end
```
