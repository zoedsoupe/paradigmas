;; Introdução à Linguagem Scheme-Racket
;; Prof. Ausberto S. Castro Vera       (ascv@uenf.br)
;; UENF-CCT-LCMAT - Curso de Ciencia da Computacao
;; Setembro - 2021
;; Aluno: Zoey de Souza Pessanha
;;
#lang racket      ;; define a linguagem default
; ------------------------------------------------

(display "  UENF-CCT-LCMAT-CC, 2021")
(newline)
(display "  Paradigmas de Linguagens de Programação (Prof. Ausberto Castro)")
(newline)
(display "  Aluno:  Zoey de Souza Pessanha ")
(newline)
(newline)

; ------------------------------------------------

(define (bhaskara a b c)
  (let* ([delta (lambda (a b c)
                  (- (expt b 2) (* 4 (* a c))))]
         [root (lambda (a b c op)
                 (/ (op (- b) (sqrt (delta a b c))) (* 2 a)))])
    (cond
      [(< (delta a b c) 0) '()]
      [else (let ([x1 (root a b c +)]
                  [x2 (root a b c -)])
              (cond
                [(equal? (delta a b c) 0) (list x1)]
                [else (list x1 x2)]))])))

(newline)
(display "EQ = 25x^2 - 55x+10 = 0")
(newline)
(display "A = 25  B = 55  C = 10  RAIZES = ")
(bhaskara 25 55 10)
