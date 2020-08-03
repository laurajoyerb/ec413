# Lab 1

This lab was the introduction to the RISC-V ISA. For this lab, I wrote RISC-V RV32I assembly code and simulated it on the BRISC-V Simulator to show that it works.

The simulator can be found here: https://ascslab.org/research/briscv/simulator/simulator.html

The instructions for each problem can be seen below:

### Problem 2
Write a function named “int_multiply” in RISC-V assembly to multiply two integers and return the result. Your function must use the assembly equivalent of a for loop. Remember, there is no multiply instruction in RV32I.

### Problem 3
Write a function to compute the factorial of a number using the assembly equivalent of a while loop. The function must be named “factorial”. This function must call your multiply function.

### Problem 4
Implement a non-recursive function to compute the n’th number in the Fibonacci sequence. The function must take in a single integer and return a single integer. The function must be named “fib_nr” (nr for non-recursive).

### Problem 5
Implement a recursive function to compute the n’th number in the Fibonacci sequence. The function must take in a single integer and return a single integer. The function must be named “fib_r” (r for recursive).
