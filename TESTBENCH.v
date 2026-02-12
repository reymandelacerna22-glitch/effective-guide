`timescale 1ns/1ps

module TESTBENCH;
    // Declarations
    reg clk;
    reg reset;
    reg [31:0] instruction;
    wire [31:0] fetched_instruction;
    wire [31:0] decoded_instruction;
    wire [31:0] execution_result;
    wire [31:0] memory_output;

    // Instantiate the CPU
    CPU myCPU (
        .clk(clk),
        .reset(reset),
        .instruction(instruction),
        .fetched_instruction(fetched_instruction),
        .decoded_instruction(decoded_instruction),
        .execution_result(execution_result),
        .memory_output(memory_output)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock with 10ns period
    end

    // Testbench procedure
    initial begin
        // Initialize the CPU
        reset = 1;
        instruction = 32'b0;
        #10;
        reset = 0;

        // Test Case 1: Instruction Fetch
        instruction = 32'b00000000000000000000000000000001; // Example instruction
        #10;
        assert(fetched_instruction == instruction) else $error("Test Case 1 Failed: Instruction Fetch Error");

        // Test Case 2: Instruction Decode
        #10;
        assert(decoded_instruction == instruction) else $error("Test Case 2 Failed: Instruction Decode Error");

        // Test Case 3: Execution
        #10;
        assert(execution_result == expected_result) else $error("Test Case 3 Failed: Execution Error");

        // Test Case 4: Memory Operations
        #10;
        assert(memory_output == expected_memory_output) else $error("Test Case 4 Failed: Memory Operation Error");

        // End simulation
        $finish;
    end
endmodule
