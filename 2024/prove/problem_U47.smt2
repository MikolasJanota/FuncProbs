(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 47
Original source: IMO-2011-3
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (< (f (+ x y)) (+ (* y (f x)) (f (f x))))))

; Negated Goal
(assert (not (forall ((x Real)) (=> (<= x 0.0) (= (f x) 0.0)))))

(check-sat)
