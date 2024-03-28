(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 75
Original source: PraSe-22-7-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status sat)

; Header
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- x y)) (+ (* (f x) (g y)) (* (f y) (g x))))))

; Find all possible f g

(check-sat)
(get-model)
