;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: Zoey de Souza Pessanha
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------

(define implies
  (lambda (p q)
    (not (and p (not q)))))

(define xor
  (lambda (p q)
    (and (not (and p q)) (or p q))))

(define bicon
  (lambda (p q)
    (not (xor p q))))

(display "Tabela verdade para implicação lógica")
(newline)
(display "T -> T = ")
(implies true true)
(newline)
(display "T -> F = ")
(implies true false)
(newline)
(display "F -> T = ")
(implies false true)
(newline)
(display "F -> F = ")
(implies false false)

(newline)
(display "Tabela verdade para disjunção exclusiva")
(newline)
(display "T ⊕ T = ")
(xor true true)
(newline)
(display "T ⊕ F = ")
(xor true false)
(newline)
(display "F ⊕ T = ")
(xor false true)
(newline)
(display "F ⊕ F = ")
(xor false false)

(newline)
(display "Tabela verdade para bicondicional")
(newline)
(display "T <-> T = ")
(bicon true true)
(newline)
(display "T <-> F = ")
(bicon true false)
(newline)
(display "F <-> T = ")
(bicon false true)
(newline)
(display "F <-> F = ")
(bicon false false)
