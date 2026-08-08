# 8-bit ALU using Verilog

## Overview

This project implements an **8-bit Arithmetic Logic Unit (ALU)** in Verilog HDL. The ALU performs arithmetic and logical operations based on a 3-bit control signal.

## Features

- 8-bit inputs
- 8-bit output
- Zero flag
- 8 ALU operations
- Verilog testbench
- GTKWave simulation support

## Inputs

- A [7:0]
- B [7:0]
- ALU_Sel [2:0]

## Outputs

- ALU_Out [7:0]
- Zero Flag

## Operations

| ALU_Sel | Function |
|----------|----------|
|000|Addition|
|001|Subtraction|
|010|AND|
|011|OR|
|100|XOR|
|101|NOT A|
|110|Left Shift|
|111|Right Shift|

## Files

- `alu_8bit.v` – ALU design
- `alu_8bit_tb.v` – Testbench
- `alu_8bit.vcd` – Waveform
- `simulation_result.png` – Waveform screenshot

## Simulation

Compile:

```bash
iverilog -o alu alu_8bit.v alu_8bit_tb.v
```

Run:

```bash
vvp alu
```

View waveform:

```bash
gtkwave alu_8bit.vcd
```

## Applications

- CPUs
- Microprocessors
- Embedded systems
- DSP
- Digital arithmetic circuits

## Author

Your Name