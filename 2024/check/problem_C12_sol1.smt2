(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Cvičení 12, Úloha 35
Original source: IMO-1992-2
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) x)))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (+ (* x x) (f y))) (+ y (* (f x) (f x)))))
)))

(check-sat)
