# Basic CPU FPGA Project Documentation

## Overview
This project implements a basic Central Processing Unit (CPU) using Field-Programmable Gate Array (FPGA) technology. The goal is to provide a foundational understanding of how a CPU operates and can be synthesized on an FPGA.

## Hardware Requirements
- FPGA Development Board (e.g., Xilinx Artix-7)
- Power Supply
- USB Cable for Programming
- Logic Analyzer (for debugging)

## Architecture
The CPU architecture consists of:
- ALU (Arithmetic Logic Unit)
- Registers
- Control Unit
- Instruction Decoder

For more details, refer to the architecture diagram included in the repository.

## Instruction Set
The CPU supports a simple instruction set including:
- **LOAD**: Load data from memory to a register
- **STORE**: Store data from a register to memory
- **ADD**: Add values from two registers and store in a register
- **SUB**: Subtract values from two registers and store in a register

## Setup Instructions
1. Download and install the required FPGA development tools (e.g., Vivado).
2. Connect the FPGA development board to your computer.
3. Clone the repository.
4. Open the project in the development environment and add the necessary constraints files.

## Usage Examples
- To load data into register R1:
  ```
  LOAD R1, Address
  ```
- To add two registers:
  ```
  ADD R1, R2, R3  # R1 = R2 + R3
  ```

## File Structure
- `src/`: Contains source code files for the CPU design.
- `sim/`: Contains simulation test benches.
- `docs/`: Documentation files (including this README).

## Simulation Guidance
To simulate the CPU:
1. Navigate to the `sim/` directory.
2. Run the simulation using your preferred simulation tool.
3. Check the output waveforms and debug any issues using the logic analyzer.

---
This README provides a comprehensive overview of the basic CPU FPGA project, ensuring that users can effectively understand and utilize the design. Feel free to contribute more detailed documentation as the project evolves.