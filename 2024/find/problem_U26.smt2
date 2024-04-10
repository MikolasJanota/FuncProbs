(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 26, Úloha 84
Original source: PraSe-27-7-8
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status sat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))
(assert (or (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (=> (< x y) (<= (f x) (f y))))) (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (=> (< x y) (>= (f x) (f y))))))) ; monotonic

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (* (f (* x y)) (f (/ (f y) x))) 1.0))))

; Find all possible f

(check-sat)
(get-model)
