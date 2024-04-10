(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 34
Original source: IMO-1990-4
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status sat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (> x 0.0)) (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) (f x)))) (> (f x) 0.0)))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (> x 0.0) (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) y))) (> y 0.0)) (= (f (* x (f y))) (/ (f x) y)))))

; Find an example of f

(check-sat)
(get-model)
