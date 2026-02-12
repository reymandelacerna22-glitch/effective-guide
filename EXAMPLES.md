# Assembly Language Examples

This document provides example programs in assembly language along with their corresponding machine code for common operations. 

## 1. Loading Registers
### Assembly Code:
```assembly
MOV R1, #5   ; Load immediate value 5 into register R1
MOV R2, R1   ; Copy value of R1 into R2
```
### Corresponding Machine Code:
```
0xE3A00005  ; MOV R1, #5
0xE1A02001  ; MOV R2, R1
```

## 2. Arithmetic Operations
### Assembly Code:
```assembly
ADD R3, R1, R2  ; Add R1 and R2 and store result in R3
SUB R4, R3, #2  ; Subtract 2 from R3 and store result in R4
```
### Corresponding Machine Code:
```
0xE0803001  ; ADD R3, R1, R2
0xE2402002  ; SUB R4, R3, #2
```

## 3. Memory Access
### Assembly Code:
```assembly
STR R1, [R0]   ; Store the value of R1 into memory address in R0
LDR R5, [R0]   ; Load the value from memory address in R0 into R5
```
### Corresponding Machine Code:
```
0xE5801000  ; STR R1, [R0]
0xE5905000  ; LDR R5, [R0]
```

## Conclusion
This document can be expanded with further examples and more detailed explanations of each instruction as needed.