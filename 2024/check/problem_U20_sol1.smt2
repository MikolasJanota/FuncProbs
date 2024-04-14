(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 20, Úloha 69
Original source: Belarus-1997
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) x)))

; Negated constraints
(assert (not
  (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* (f x) (f y))) (+ (+ (f (* x y)) (f x)) (f y))))
))

(check-sat)
(exit)
