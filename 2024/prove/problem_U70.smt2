(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 70
Original source: Bulgaria-1998
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (>= (* (f x) (f x)) (* (f (+ x y)) (+ (f x) y))))))

; Negated Goal
(assert (not false))

(check-sat)
(exit)
