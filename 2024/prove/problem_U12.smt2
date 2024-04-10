(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 12, Úloha 78
Original source: PraSe-25-4-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (and (distinct x 0.0) (distinct x 1.0)) (= (+ (f x) (f (/ 1.0 (- 1.0 x)))) x))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (and (distinct x 0.0) (distinct x 1.0)) (= (f x) (/ (+ (- (* x x x) x) 1.0) (- (* 2.0 (* x x)) (* 2.0 x))))))))

(check-sat)
