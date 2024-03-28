(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 67
Original source: Spain-2006
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const lambda Real)
(assert (> lambda 0.0))
(declare-fun f (Real) Real)

; Equations
(assert (= (f lambda) 1.0))
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (+ (+ (* (f x) (f y)) (f (/ lambda x))) (f (/ lambda y))) (* 2.0 (f (* x y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (> x 0.0) (= (f x) 1.0)))))

(check-sat)
