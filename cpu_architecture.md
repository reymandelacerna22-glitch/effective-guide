# CPU Architecture Documentation

## Overview
This document provides a detailed overview of CPU architecture, including components such as the Program Counter, Instruction Memory, Register File, ALU, Data Memory, and their interconnections in the datapath.

## Components

### 1. Program Counter (PC)
- The Program Counter is a register that contains the address of the next instruction to be executed. 
- It increments by the size of the instruction after fetching it.

### 2. Instruction Memory
- This stores the instructions that are to be fetched for execution.
- Typically, it is read-only and holds the program code.

### 3. Register File
- The Register File consists of a set of registers used to hold intermediate data.
- It provides fast access to frequently used variables and results of calculations.

### 4. Arithmetic Logic Unit (ALU)
- The ALU performs arithmetic and logical operations on the data received from the register file and memory.
- It provides operations such as addition, subtraction, AND, OR, etc.

### 5. Data Memory
- Data Memory is used to store data that is being processed and results from operations.
- It can be read from and written to during the execution of instructions.

## Datapath Interconnection
The components of the CPU architecture are interconnected through a series of buses and pathways:
- The Program Counter provides the address to the Instruction Memory to fetch the next instruction.
- The fetched instruction is decoded to determine the operation and the operands.
- The operand values are accessed from the Register File.
- The values are then sent to the ALU for processing.
- The output of the ALU can either go to the Register File or be sent to Data Memory.
- Data Memory manages the storage of results and intermediate data.

## Conclusion
Understanding the interconnections and functions of each component is crucial for grasping how CPUs operate and execute instructions efficiently. This knowledge is foundational for computer architecture studies and practices.