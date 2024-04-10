(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 54
Original source: APMO-2011
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const m Real)
(assert (> m 0.0))
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) 0.0)))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (< (f x) m))
  (forall ((x Real) (y Real)) (= (+ (f (* x (f y))) (* y (f x))) (+ (* x (f y)) (f (* x y)))))
)))

(check-sat)
