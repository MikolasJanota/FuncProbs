(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 39
Original source: IMO-1999-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (- 1.0 (/ (* x x) 2.0)))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (- x (f y))) (- (+ (+ (f (f y)) (* x (f y))) (f x)) 1.0)))
)))

(check-sat)