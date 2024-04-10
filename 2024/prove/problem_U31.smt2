(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 31
Original source: IMO-1979-26
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (+ (* x y) x) y)) (+ (+ (f (* x y)) (f x)) (f y)))))

; Negated Goal
(assert (not (forall ((x Real) (y Real)) (= (f (+ x y)) (+ (f x) (f y))))))

(check-sat)
