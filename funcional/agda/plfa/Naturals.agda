module Naturals where

import  Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; _≡⟨⟩_; _∎)

-- type definition
data ℕ : Set where
  zero : ℕ
  suc  : ℕ → ℕ

-- bind builtin (aka Haskell integers) to my natural type
{-# BUILTIN NATURAL ℕ #-}

-- define addition proof
-- base case for identity rule
-- inductive case for associative rule
_+_ : ℕ → ℕ → ℕ
zero + n  = n
suc m + n = suc (m + n)

-- 2 + 3 proposition is reflexive
-- that means addition is a binary
-- relation that relates to itself
_ : 2 + 3 ≡ 5
_ = refl

-- same for 3 + 4 propositon
-- i manually proved it
_ : 3 + 4 ≡ 7
_ =
  begin
    3 + 4
  ≡⟨⟩
    suc (2 + 4)
  ≡⟨⟩
    suc (suc (1 + 4))
  ≡⟨⟩
    suc (suc (suc (0 + 4)))
  ≡⟨⟩
    suc (suc (suc 0)) + suc 3
  ≡⟨⟩
    suc (suc (suc 0)) + suc (suc 2)
  ≡⟨⟩
    suc (suc (suc 0)) + suc (suc (suc 1))
  ≡⟨⟩
    suc (suc (suc 0)) + suc (suc (suc (suc 0)))
  ≡⟨⟩
    7
  ∎
-- after addition we can efine
-- multiplication in terms of it
-- note the base case and the inductive case
_*_ : ℕ → ℕ → ℕ
zero * n = zero
suc m * n = n + (m * n)

_ =
  begin
    2 * 3
  ≡⟨⟩
    3 + (1 * 3)
  ≡⟨⟩
    3 + (3 + (0 * 3))
  ≡⟨⟩
    3 + (3 + 0)
  ≡⟨⟩
    6
  ∎

_ =
  begin
    3 * 4
  ≡⟨⟩
    4 + (2 * 4)
  ≡⟨⟩
    4 + (4 + (1 * 4))
  ≡⟨⟩
    4 + (4 + (4 + (0 * 4)))
  ≡⟨⟩
    12
  ∎

-- with multiplication we then can
-- define exponentiation
-- note that `m ^ zero` ‌/= `zero ^ m`
_^_ : ℕ → ℕ → ℕ
n ^ zero  = 1
m ^ suc n = m * (m ^ n)

_ : 3 ^ 4 ≡ 81
_ =
  begin
    3 ^ 4
  ≡⟨⟩
    3 * (3 ^ 3)
  ≡⟨⟩
    3 * (3 * (3 ^ 2))
  ≡⟨⟩
    3 * (3 * (3 * (3 ^ 1)))
  ≡⟨⟩
    3 * (3 * (3 * (3 * (3 ^ 0))))
  ≡⟨⟩
    81
  ∎

_∸_ : ℕ → ℕ → ℕ
m ∸ zero      = m
zero ∸ suc n  = zero
suc m ∸ suc n = m ∸ n

_ : 3 ∸ 2 ≡ 1
_ =
  begin
    3 ∸ 2
  ≡⟨⟩
    2 ∸ 1
  ≡⟨⟩
    1 ∸ 0
  ≡⟨⟩
    1
  ∎

_ : 2 ∸ 3 ≡ 0
_ =
  begin
    2 ∸ 3
  ≡⟨⟩
    1 ∸ 2
  ≡⟨⟩
    0 ∸ 1
  ≡⟨⟩
    0
  ∎

_ : 5 ∸ 3 ≡ 2
_ =
  begin
    5 ∸ 3
  ≡⟨⟩
    4 ∸ 2
  ≡⟨⟩
    3 ∸ 1
  ≡⟨⟩
    2 ∸ 0
  ≡⟨⟩
    2
  ∎

_ : 3 ∸ 5 ≡ 0
_ =
  begin
    3 ∸ 5
  ≡⟨⟩
    2 ∸ 4
  ≡⟨⟩
    1 ∸ 3
  ≡⟨⟩
    0 ∸ 2
  ≡⟨⟩
    0
  ∎

-- here we define the precedence
-- of operators. all they are left associative
-- and addiction and monus have precedence less
-- than multiplication
infixl 6 _+_ _∸_
infixl 7 _*_
infixl 8 _^_

-- binding aforementioned operators
-- to the relevant Haskell integer operators
{-# BUILTIN NATPLUS _+_ #-}
{-# BUILTIN NATTIMES _*_ #-}
{-# BUILTIN NATMINUS _∸_ #-}
