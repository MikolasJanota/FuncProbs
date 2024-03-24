(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Miroslav Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 45
Original source: IMOSC-2009-A7
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* x (f (+ x y)))) (+ (f (* y (f x))) (* x x)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(assert (not (forall ((x Real)) (= (f x) (- x)))))

(check-sat)
