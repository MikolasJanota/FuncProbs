(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Original source: C9a
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (* 2.0 (* x x)))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (f (+ (f x) y)) (+ (+ (f (* 2.0 (* x x))) (* (* 4.0 (f x)) y)) (* 2.0 (* y y)))))
)))

(check-sat)
