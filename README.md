# Student Marks Management System (SystemVerilog)

## 📌 Project Overview
This project is a hardware verification simulation demonstrating a **real-life application of dynamic arrays** in SystemVerilog. It was developed as part of the "ASIC and Verification" coursework (Experiment 6a). 

The system simulates a grading database where the number of students is not fixed at compile time. It demonstrates how to allocate memory dynamically, perform statistical calculations (total, average, highest marks), resize the array to accommodate new admissions, and clear memory upon completion.

## 🚀 Key SystemVerilog Features Demonstrated
* **Dynamic Arrays (`[]`)**: Declaring arrays without a fixed compile-time size.
* **Dynamic Allocation (`new[]`)**: Initializing array sizes at runtime.
* **Data Iteration (`foreach`)**: Safely traversing arrays without out-of-bounds errors.
* **Dynamic Resizing**: Using `new[size](old_array)` to expand the array while preserving existing data.
* **Memory Management (`delete()`)**: Freeing up allocated memory when the array is no longer needed.

## 🛠️ Prerequisites and Tools
To run this code, you need a SystemVerilog-compatible simulator. The easiest way to run it without local installation is via **EDA Playground**.

* **Platform:** [EDA Playground](https://www.edaplayground.com/)
* **Supported Simulators:** 
  * Aldec Riviera Pro
  * Synopsys VCS
  * Cadence Xcelium
  * *Note: Avoid using Icarus Verilog (`iverilog`), as its support for SystemVerilog dynamic arrays can be limited.*

## 📂 File Structure
* `testbench.sv` - Contains the complete SystemVerilog module (`student_marks_management`) with all the dynamic array logic.
* `design.sv` - Left completely blank (since this is purely a verification/data-structure simulation, there is no RTL design).

## 💻 How to Run
1. Go to [EDA Playground](https://www.edaplayground.com/).
2. Paste the provided code into the **`testbench.sv`** window.
3. Ensure the **`design.sv`** window is completely empty.
4. On the left panel under **Tools & Simulators**, select a commercial SystemVerilog simulator (e.g., Aldec Riviera Pro).
5. Click **Run**.

## 📊 Expected Output
Upon successful execution, the console will display:

```text
=== Student Marks Management System ===

--- Initial Marks List ---
Student 1: 85
Student 2: 92
Student 3: 78
Student 4: 65
Student 5: 88

--- Class Statistics ---
Total Students : 5
Class Average  : 81.60
Highest Mark   : 92

--- Late Admission: Adding New Student ---
New Class Size: 6
Student 6 Marks: 95

System memory cleared. Current array size: 0
