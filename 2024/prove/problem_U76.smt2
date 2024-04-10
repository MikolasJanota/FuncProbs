(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 76
Original source: PraSe-22-7-8
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (>= (f x) 0.0))))
(assert (forall ((x Real) (y Real)) (=> (and (>= x 0.0) (>= y 0.0)) (=> (< x y) (< (f x) (f y)))))) ; increasing

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (>= x 0.0) (>= y 0.0)) (= (f (* y (f x))) (* (* x x) (f (* x y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (>= x 0.0) (= (f x) (* x x))))))

(check-sat)
