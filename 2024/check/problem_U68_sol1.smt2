(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 68
Original source: Romania-2009
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const a Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (* a x))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (+ (* x x x) (* y y y))) (+ (* x (f (* x x))) (* y (f (* y y))))))
)))

(check-sat)
