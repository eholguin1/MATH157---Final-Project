import Mathlib.Tactic

/-
This file is a working fragment of my final project. The goal of the project is
to formalize a simple theorem from discrete mathematics: if a natural number is
even, then its square is also even.

The proof follows the standard informal argument. If `n` is even, then there is
some natural number `k` such that `n = 2 * k`. Substituting this into `n * n`,
we get `(2 * k) * (2 * k)`, which can be rearranged as `2 * (2 * k * k)`.
Therefore, `n * n` is also divisible by 2, so it is even.
-/

def IsEven (n : Nat) : Prop :=
  ∃ k : Nat, n = 2 * k

example : IsEven 0 := by
  use 0

example : IsEven 2 := by
  use 1

example : IsEven 4 := by
  use 2

example : IsEven 6 := by
  use 3

lemma even_zero : IsEven 0 := by
  use 0

lemma even_two_nat : IsEven 2 := by
  use 1

lemma even_four : IsEven 4 := by
  use 2

lemma even_six : IsEven 6 := by
  use 3

lemma even_mul_two_right (k : Nat) : IsEven (2 * k) := by
  use k

lemma even_square_example_two : IsEven (2 * 2) := by
  use 2

lemma even_square_example_four : IsEven (4 * 4) := by
  use 8

lemma even_square_example_six : IsEven (6 * 6) := by
  use 18

/-
The next lemma is the main working fragment. It proves the general statement
that if a natural number `n` is even, then `n * n` is even. The proof opens the
definition of evenness, extracts the witness `k`, substitutes `n = 2 * k`, and
then provides the new witness `2 * k * k`.
-/

theorem even_square {n : Nat} (h : IsEven n) : IsEven (n * n) := by
  rcases h with ⟨k, hk⟩
  use 2 * k * k
  rw [hk]
  ring
