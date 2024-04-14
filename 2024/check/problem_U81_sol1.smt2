(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 81
Original source: PraSe-27-7-3
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (f x) (/ 1.0 x)))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0)))
  (forall ((x Real)) (=> (> x 0.0) (= (+ (* (* x x x) (* (f x) (f x) (f x))) 1.0) (* (* x (f x)) (+ 1.0 (* x (f x)))))))
)))

(check-sat)
(exit)
