(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 10, Úloha 83
Original source: PraSe-27-7-6
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (* x x))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (+ (f (+ (* x x) y)) (f (- (f x) y))) (+ (* 2.0 (f (f x))) (* 2.0 (* y y)))))
)))

(check-sat)
