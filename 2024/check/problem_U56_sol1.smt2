(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 56
Original source: BalticWay-2010-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) 0.0)))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (+ (f (* x x)) (f (* x y))) (+ (+ (* (f x) (f y)) (* y (f x))) (* x (f (+ x y))))))
)))

(check-sat)