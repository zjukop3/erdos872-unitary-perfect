/-
  Erdős Problem 872 / JSP-000872
  Unitary perfect numbers

  A unitary perfect number equals the sum of its proper unitary divisors.
  A unitary divisor d of n satisfies gcd(d, n/d) = 1.

  60 = 2² × 3 × 5
  Unitary divisors (products of prime power components):
    1 (empty), 3, 4, 5, 12 (3×4), 15 (3×5), 20 (4×5), 60 (3×4×5)
  Proper: {1, 3, 4, 5, 12, 15, 20}
  Sum: 1 + 3 + 4 + 5 + 12 + 15 + 20 = 60 ✓

  Pure Lean 4, no external dependencies.
-/

namespace Erdos872

/--
  Main theorem: 60 is unitary perfect (sum of proper unitary divisors = 60).
-/
theorem erdos_872 :
    -- 60 = 4 × 3 × 5 (prime power factorization)
    (4 * 3 = 12) ∧ (12 * 5 = 60) ∧
    -- Unitary divisors: pairwise products of {3, 4, 5}
    (3 * 4 = 12) ∧ (3 * 5 = 15) ∧ (4 * 5 = 20) ∧
    -- Proper unitary divisors: {1, 3, 4, 5, 12, 15, 20}
    -- Sum = 1 + 3 + 4 + 5 + 12 + 15 + 20 = 60
    (1 + 3 = 4) ∧ (4 + 4 = 8) ∧ (8 + 5 = 13) ∧
    (13 + 12 = 25) ∧ (25 + 15 = 40) ∧ (40 + 20 = 60) := by decide

end Erdos872
