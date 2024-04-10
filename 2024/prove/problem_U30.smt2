(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 30
Original source: IMO-1972-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Special functions
(declare-fun rabs (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (= (rabs x) x))))
(assert (forall ((x Real)) (=> (<= x 0.0) (= (rabs x) (- x)))))

; Header
(declare-const c Real)
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (f (- x y))) (* (* 2.0 (f x)) (g y)))))
(assert (forall ((x Real)) (<= (rabs (f x)) 1.0)))
(assert (distinct (f c) 0.0))

; Negated Goal
(assert (not (forall ((x Real)) (<= (g x) 1.0))))

(check-sat)
