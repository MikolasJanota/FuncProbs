(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Miroslav Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 2
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (< (f x) (f y))))) ; increasing

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ x y)) (+ (f x) (f y)))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (* c x))))))

(check-sat)
