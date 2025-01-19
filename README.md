# Solidity Transfer Function Overflow Bug

This repository demonstrates a common bug in Solidity smart contracts: integer overflow in the `transfer` function.  The vulnerable code does not check for potential arithmetic overflows, leading to unexpected behavior and potential exploits.

## Vulnerability

The `transfer` function subtracts the transferred amount from the sender's balance without checking for underflow.  If an attacker attempts to transfer more tokens than the sender has, the underflow results in a large positive number being added to the recipient's balance.

## Solution

The provided solution implements a safe subtraction function that avoids overflow/underflow errors. This ensures that the transfer operation only proceeds if it is mathematically valid.