(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Cvičení 3, Úloha 85
Original source: PraSe-27-7-8a
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (* x x))))

; Negated constraints
(assert (not
  (forall ((x Real) (y Real)) (= (f (+ x (f y))) (+ (+ (* x x) (* (f y) (f y))) (* (* 2.0 x) (f y)))))
))

(check-sat)
(exit)
