(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 61
Original source: CSMO-60-A-III-6
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status sat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (* (f x) (f y)) (+ (* (f y) (f (* x (f y)))) (/ 1.0 (* x y)))))))

; Find all possible f

(check-sat)
(get-model)
