(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 27, Úloha 36
Original source: IMOSC-1992-A2
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-const a Real)
(assert (> a 0.0))
(declare-const b Real)
(assert (> b 0.0))
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (f x) (* b x)))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0)))
  (forall ((x Real)) (=> (> x 0.0) (= (+ (f (f x)) (* a (f x))) (* (* b (+ a b)) x))))
)))

(check-sat)
(exit)
