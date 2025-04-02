# booth-multiplier
Booth's algorithm is an efficient multiplication algorithm that reduces the number of partial products, making it faster for signed binary multiplication.

**Aim of Booth's Algorithm:**

Booth's algorithm is designed to perform fast multiplication of two signed binary numbers (in two's complement representation). 
Its primary aim is to minimize the number of additions and subtractions required, improving the efficiency of the multiplication process, especially when multiplying large binary numbers.

**Operation of Booth's Algorithm:**

Booth’s algorithm works by encoding sequences of 0s and 1s in the multiplier to reduce the number of arithmetic operations needed. 
The algorithm shifts and adds/subtracts based on the analysis of the current and previous bits of the multiplier.

**Here's a step-by-step outline of how it operates:**

**1. Initialization:**

o Set the multiplicand M and multiplier Q. 
o Initialize a register A (same size as M) to 0. 
o Set a bit Q-1 to 0 (an extra bit for the multiplier). 
o Set a counter to the number of bits in the multiplier. 

**2. Examine the least significant bit (LSB) of the multiplier Q and Q-1:**

o If the current least significant bit (Q0) and the previous bit (Q-1) are: 
▪ 10: Subtract the multiplicand from the value in A (i.e., A = A - M). 
▪ 01: Add the multiplicand to the value in A (i.e., A = A + M). 
▪ 00 or 11: No arithmetic operation is performed. 

**3. Right shift the accumulator (A), the multiplier (Q), and the extra bit Q-1 as a combined unit (arithmetic shift).** 

**4. Repeat the above steps until the counter reaches zero.**

**5. Final result:** 
After the final shift, the concatenated result of A and Q represents the product of the two 
numbers. 


 **Advantages of Booth Multiplier**
 
Handles Signed Multiplication Efficiently – Supports both positive and negative numbers.

Reduces the Number of Partial Products – Minimizes additions and subtractions.

Efficient for Large Multiplications – Useful in high-speed DSP applications.

Hardware Optimization – Reduces logic complexity in VLSI circuits.

Power-Efficient – Saves switching power by skipping unnecessary operations.
