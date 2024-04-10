(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 8, Úloha 86
Original source: PraSe-27-8-7b
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const c Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (+ (* x x) c))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (+ x (f y))) (+ (+ (f x) (* (f y) (f y))) (* (* 2.0 x) (f y)))))
)))

(check-sat)
