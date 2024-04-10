(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Cvičení 10
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (<= (f x) (f y))))) ; nondecreasing

; Equations
(assert (forall ((x Real)) (= (f (f x)) x)))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
