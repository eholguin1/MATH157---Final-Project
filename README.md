# MATH 157 Final Project

## Project Title
Formalizing the Theorem:
"If a Natural Number is Even, Then Its Square is Even"

## Description
This project formalizes a basic theorem from number theory using Lean 4 and Mathlib.

The main goal is to prove that if a natural number is even, then its square is also even. The project includes several intermediate lemmas and multiple proof styles using Lean tactics.

## Main Results
The project proves the following results:

1. Any number of the form `2 * k` is even.
2. If `n` is even, then `n * n` is even.
3. If `n` is even, then `n^2` is even.
4. An alternative proof of the main theorem using direct expansion of the definition of even.

## Files
- `FinalProject/Basic.lean`
  - Contains all theorem statements and proofs.

- `FinalProject.lean`
  - Imports the main project file.

## Build Instructions

To build the project, run:

```bash
lake build
