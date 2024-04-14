(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Cvičení 4
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ (* x x) y)) (f (- (f x) y))) (+ (* 2.0 (f (f x))) (* 2.0 (* y y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (* x x)))))

(check-sat)
(exit)
