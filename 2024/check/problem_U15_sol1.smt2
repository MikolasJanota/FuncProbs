(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 15
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (= (f x) 0.0))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (=> (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) y)))) (= (f (+ x y)) (* (f x) (f y)))))
)))

(check-sat)