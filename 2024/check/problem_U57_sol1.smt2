(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 57
Original source: BalticWay-2011-6
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)

; Equations
(assert (= c 1.0))
(assert (forall ((x Real)) (= (f (f x)) (+ (- (* x x) x) 1.0))))

; Negated constraints
(assert (not
  (= (f 0.0) c)
))

(check-sat)
(exit)
