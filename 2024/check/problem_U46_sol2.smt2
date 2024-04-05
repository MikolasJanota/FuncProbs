(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 46
Original source: IMO-2010-1
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const c Real)
(assert (>= c 1.0))
(assert (< c 2.0))
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) c)))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (* (to_real (to_int x)) y)) (* (f x) (to_real (to_int (f y))))))
)))

(check-sat)
