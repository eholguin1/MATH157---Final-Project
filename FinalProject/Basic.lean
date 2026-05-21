import Mathlib.Tactic

/-
  MATH 157 Final Project

  Goal:
  If a natural number is even, then its square is even.
-/

/-
  Lemma 1:
  Any number of the form 2*k is even.
-/
theorem my_even_two_mul (k : ℕ) : Even (2 * k) := by
  use k
  ring

/-
  Lemma 2:
  If n is even, then n*n is even.
-/
theorem even_mul_self_of_even (n : ℕ) (hn : Even n) :
    Even (n * n) := by
  rcases hn with ⟨k, hk⟩
  use 2 * k^2
  rw [hk]
  ring

/-
  Main Theorem:
  If n is even, then n squared is even.
-/
theorem even_square_of_even (n : ℕ) (hn : Even n) :
    Even (n^2) := by
  simpa [pow_two] using even_mul_self_of_even n hn

/-
  Alternative proof:
  This proof directly expands the definition of even.
-/
theorem even_square_of_even_alt (n : ℕ) (hn : Even n) :
    Even (n^2) := by
  rcases hn with ⟨k, hk⟩
  use 2 * k^2
  rw [hk]
  ring
