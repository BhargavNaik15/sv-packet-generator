# 📦 SystemVerilog Packet Generator

This project demonstrates key **Object-Oriented Programming (OOP)** concepts in **SystemVerilog** using a simple `packet` generator example.

---

## 📁 File

- `packet_generator.sv` – Contains the SystemVerilog classes and a test module to simulate packet generation.

---

## 📘 Concepts Covered

This example showcases:

- ✅ Class creation
- ✅ Constructors
- ✅ Inheritance (`extends`)
- ✅ Virtual functions and overriding (polymorphism)
- ✅ Object copying (shallow copy)
- ✅ Use of `rand` for randomization
- ✅ Test module to check functionality

---

## 🧾 Description

- `packet` is the base class, which has:
  - Random variables: `src`, `dest`, and `data`
  - A constructor to initialize them
  - A `copy()` method for shallow copying
  - A virtual `display()` method

- `packet1` is a child class that:
  - Overrides the `display()` method to demonstrate **polymorphism**

- A test module (`tester`) is used to:
  - Create and randomize a `packet1` object
  - Copy it to another object
  - Display both objects’ values to verify copying and polymorphism

---

## ▶️ How to Run

You can run this on any SystemVerilog-compatible simulator such as:

- ✅ Synopsys VCS
- ✅ Mentor QuestaSim
- ✅ EDA Playground (online)

---

## 🧪 Sample Output (Simulation)
** Considering only a single repeatition and also no constraints are applied for the randomization.
Child class values, src = 3, dest = 11, data = 89
Parent class values, src = 3, dest = 11, data = 89
