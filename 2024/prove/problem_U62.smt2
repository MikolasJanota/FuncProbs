(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 62
Original source: USAMO-2002
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- (* x x) (* y y))) (- (* x (f x)) (* y (f y))))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (* c x))))))

(check-sat)
