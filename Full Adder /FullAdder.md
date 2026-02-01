# ➕ Full Adder (Verilog HDL)

## 📘 Overview
A **Full Adder** is a **combinational logic circuit** that performs the arithmetic addition of **three input bits** — two operands (`a`, `b`) and a **carry input** (`cin`).  
It produces two outputs: the **sum** and the **carry-out**.  

---

## 📂 Files
- **Full_Adder.v** → RTL design for 1-bit Full Adder using Half Adder (Structural Style)
- **Full_Adder_TB.v** → Testbench for verification
- **Full_Adder_DF.v** → RTL design for 1-bit Full Adder using Half Adder (Structural Style)
- **Full_Adder_DF_TB.v** → Testbench for verification

---

## 🧮 Functionality

### 🔹 Inputs:
- `a` → First input bit  
- `b` → Second input bit  
- `cin` → Carry input  

### 🔹 Outputs:
- `sum` → Output bit representing `(a ⊕ b ⊕ cin)`  
- `carry` → Output carry bit representing `((a & b) | (b & cin) | (a & cin))`  

---

## 🗂 Truth Table

| a | b | cin | sum | carry |
|---|---|-----|-----|-------|
| 0 | 0 | 0   |  0  |   0   |
| 0 | 0 | 1   |  1  |   0   |
| 0 | 1 | 0   |  1  |   0   |
| 0 | 1 | 1   |  0  |   1   |
| 1 | 0 | 0   |  1  |   0   |
| 1 | 0 | 1   |  0  |   1   |
| 1 | 1 | 0   |  0  |   1   |
| 1 | 1 | 1   |  1  |   1   |

---

## ⚙️ Working Principle
- The **sum** output is generated using a **three-input XOR operation**:  
  `sum = a ⊕ b ⊕ cin`  
- The **carry** output is produced using **majority logic**:  
  `carry = (a & b) | (b & cin) | (a & cin)`  

This logic ensures correct arithmetic addition at the bit level.

---

## 📈 Waveform

![Waveform]()
## 🧠 Applications
```
    Used in Arithmetic Logic Units (ALUs)

    Binary addition in processors

    Building block for multi-bit adders like Ripple Carry or Carry Look-Ahead Adders
```
### 🏁 Conclusion

The Full Adder combines three inputs to produce accurate sum and carry outputs.
It serves as a fundamental element in digital arithmetic and processor design.
