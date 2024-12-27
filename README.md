# VHDL Counter with Overflow Handling

This repository demonstrates a common VHDL coding error: a counter that silently wraps around upon reaching its maximum value.  The `counter_bug.vhdl` file shows the faulty code, which lacks error handling for overflow.  The improved `counter_solution.vhdl` provides a solution by adding a check for the maximum count and handling overflow appropriately.

## Bug Description
The original VHDL counter increments its value until it reaches its maximum value (15). When it exceeds this limit, it wraps around to 0 without any indication of an overflow condition.  This silent overflow can lead to unexpected behavior in the system.

## Solution
The solution incorporates an overflow check within the counter's process. When the counter reaches 15, it signals an overflow condition or halts its increment. This allows for more robust and predictable system behavior.

## How to Use

1.  Simulate the `counter_bug.vhdl` file to observe the silent overflow.  Note the behavior as the counter reaches and exceeds its maximum value.
2.  Simulate the `counter_solution.vhdl` file to compare its handling of overflow.  Verify that the counter behaves as expected and manages the overflow condition gracefully.
