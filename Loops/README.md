# SystemVerilog Loops: Basics

This document provides a quick reference for using loops in **SystemVerilog**.

---

## 1. `for` Loop

Iterates a fixed number of times based on a loop variable.

```systemverilog
for (int i = 0; i < 10; i++) begin
    $display("Iteration: %0d", i);
end
```

(i) is the loop variable (can be declared inside or outside the `for` loop).

## 2. `while` Loop

Executes the loop body as long as a condition is true.

```systemverilog
int j = 0;
while (j < 5) begin
    $display("Count: %0d", j);
    j++;
end
```

The condition is checked before each loop iteration.

## 3. do...while Loop

Executes the loop body at least once, then checks the condition.

```systemverilog
int k = 0;
do begin
    $display("Value: %0d", k);
    k++;
end while (k < 3);
```

Executes at least once regardless of the condition.

## 4. foreach Loop (Array Iteration)

Used to iterate over arrays conveniently.

```systemverilog
int arr[4] = '{10, 20, 30, 40};
foreach (arr[i]) begin
    $display("arr[%0d] = %0d", i, arr[i]);
end
```

i is the index of the current element.

Works for packed/unpacked arrays.
