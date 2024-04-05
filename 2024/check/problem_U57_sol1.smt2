(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 57
Original source: BalticWay-2011-6
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)

; Equations
(assert (= c 1.0))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (= (f (f x)) (+ (- (* x x) x) 1.0)))
  (= (f 0.0) c)
)))

(check-sat)
