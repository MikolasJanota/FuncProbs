(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 41
Original source: IMO-2002-4
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real) (u Real) (v Real)) (= (* (+ (f x) (f y)) (+ (f u) (f v))) (+ (f (- (* x u) (* y v))) (f (+ (* x v) (* y u)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (* x x)))))

(assert (not (forall ((x Real)) (= (f x) (/ 1.0 2.0)))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
(exit)
