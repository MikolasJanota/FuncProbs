(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 49
Original source: MEMO-2009
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) 0.0)))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (+ (f (* x (f x))) (f (+ (f x) (f y)))) (+ (* y (f x)) (f (+ x (f y))))))
)))

(check-sat)
