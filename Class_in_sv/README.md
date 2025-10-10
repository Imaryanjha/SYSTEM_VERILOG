# 🧩 Class in SystemVerilog (Basics)

This folder contains a basic example demonstrating how **classes** work in **SystemVerilog**.

---

## 📘 Overview

A **class** in SystemVerilog is a user-defined type that combines **data (variables)** and **methods (functions/tasks)**.  
It is mainly used in **testbench design** for modeling and verification.

---

## 🧠 Key Points

- Classes are used to implement **Object-Oriented Programming (OOP)**.
- Objects are created using the **`new()`** constructor.
- Supports **encapsulation** and **inheritance**.
- Useful in **UVM** and **transaction-level modeling**.

---

## 💻 Example

```systemverilog
class Example;
  int a, b;

  function void display();
    $display("a = %0d, b = %0d", a, b);
  endfunction
endclass

module tb;
  Example obj;
  initial begin
    obj = new();
    obj.a = 10;
    obj.b = 20;
    obj.display();
  end
endmodule

## Output

a = 10, b = 20


