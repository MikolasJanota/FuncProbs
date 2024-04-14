(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Cvičení 13
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (f x) x))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0)))
  (forall ((x Real)) (=> (> x 0.0) (= (+ (+ (f (f (f x))) (* 4.0 (f (f x)))) (f x)) (* 6.0 x))))
)))

(check-sat)
(exit)
