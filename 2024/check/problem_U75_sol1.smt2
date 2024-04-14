(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 75
Original source: PraSe-22-7-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) c)))
(assert (forall ((x Real)) (= (g x) (/ 1.0 2.0))))

; Negated constraints
(assert (not
  (forall ((x Real) (y Real)) (= (f (- x y)) (+ (* (f x) (g y)) (* (f y) (g x)))))
))

(check-sat)
(exit)
