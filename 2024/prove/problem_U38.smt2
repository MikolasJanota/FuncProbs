(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 38
Original source: IMOSC-1996-A7
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Special functions
(declare-fun rabs (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (= (rabs x) x))))
(assert (forall ((x Real)) (=> (<= x 0.0) (= (rabs x) (- x)))))

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (<= (rabs (f x)) 1.0)))
(assert (forall ((x Real)) (= (+ (f (+ x (/ 13.0 42.0))) (f x)) (+ (f (+ x (/ 1.0 6.0))) (f (+ x (/ 1.0 7.0)))))))

; Negated Goal
(assert (not (forall ((x Real)) (= (f (+ x 1.0)) (f x)))))

(check-sat)
(exit)
