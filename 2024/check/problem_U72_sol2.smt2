(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 72
Original source: PraSe-18-6-2
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) 1.0)))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (+ (* 2.0 x) y)) (* (f (+ (* 2.0 y) x)) (f (+ x y)))))
)))

(check-sat)
