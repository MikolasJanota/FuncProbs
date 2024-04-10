(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 92
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (distinct (f x) (f y))))) ; injective

; Equations
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (= (f (/ (+ x y) (- x y))) (/ (+ (f x) (f y)) (- (f x) (f y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
