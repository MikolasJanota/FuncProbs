(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 64
Original source: Vietnam-2005
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (- x))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (f (- x y))) (- (+ (- (* (f x) (f y)) (f x)) (f y)) (* x y))))
)))

(check-sat)