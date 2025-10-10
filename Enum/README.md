# 🧩 Enum in SystemVerilog

---

## 🔹 What is `enum`?

`enum` (enumeration) in **SystemVerilog** is a **user-defined data type** that allows assigning **names to a set of numeric values**, improving code **readability** and **maintainability**.

It’s typically used for **state machines**, **modes**, or **control signals** that have a **limited set of possible values**.

---

## 🔹 Syntax

```systemverilog
enum [data_type] {list_of_names} variable_name;
```

## 🔹 Enum Functions
| Function   | Description                                            |
| ---------- | ------------------------------------------------------ |
| `.first()` | Returns the first value in the enum                    |
| `.last()`  | Returns the last value in the enum                     |
| `.next()`  | Returns the next value (wraps to first if at end)      |
| `.prev()`  | Returns the previous value (wraps to last if at start) |
| `.num()`   | Returns the number of items in the enum                |
| `.name()`  | Returns the string name of the current value           |
