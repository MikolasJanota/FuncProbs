(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 50
Original source: MEMO-2010
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* (f x) (f y))) (+ (+ (f (* x y)) (* (+ y 1.0) (f x))) (* (+ x 1.0) (f y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (+ (* x x) x)))))

(assert (not (forall ((x Real)) (= (f x) (* 3.0 x)))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
(exit)
