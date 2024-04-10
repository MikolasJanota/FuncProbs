(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 40
Original source: IMOSC-2000-A3
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const c Real)
(assert (distinct c (- 1.0)))
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (/ (- (* c x) (* c c)) (+ 1.0 c)))))
(assert (forall ((x Real)) (= (g x) (- (* c x) (* c c)))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (+ x (g y))) (+ (- (* x (f y)) (* y (f x))) (g x))))
)))

(check-sat)
