(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 51
Original source: MEMO-2011
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (+ (* c x) 1.0))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (+ (+ (* (* y y) (f x)) (* (* x x) (f y))) (* x y)) (+ (+ (* (* x y) (f (+ x y))) (* x x)) (* y y))))
)))

(check-sat)
