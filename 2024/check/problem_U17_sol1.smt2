(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 17
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const r Real)
(declare-fun f (Real) Real)

; Equations
(assert (= r 0.0))
(assert (forall ((x Real)) (= (f (f x)) (+ x (f x)))))

; Negated constraints
(assert (not (and
  (= (f (f r)) 0.0)
)))

(check-sat)
