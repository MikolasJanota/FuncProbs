(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Cvičení 7
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (and (distinct x 1.0) (distinct x (- 1.0))) (= (+ (f (/ (- x 3.0) (+ x 1.0))) (f (/ (+ x 3.0) (- 1.0 x)))) x))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (and (distinct x 1.0) (distinct x (- 1.0))) (= (f x) (/ (+ (* x x x) (* 7.0 x)) (* 2.0 (- 1.0 (* x x)))))))))

(check-sat)
(exit)
