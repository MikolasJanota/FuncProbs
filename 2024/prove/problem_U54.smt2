(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Miroslav Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 54
Original source: APMO-2011
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-const m Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (< (f x) m)))
(assert (forall ((x Real) (y Real)) (= (+ (f (* x (f y))) (* y (f x))) (+ (* x (f y)) (f (* x y))))))

; Find all possible f

; Solutions

(assert (not (and
  (forall ((x Real)) (=> (>= x 0.0) (= (f x) 0.0)))
  (forall ((x Real)) (=> (< x 0.0) (= (f x) (* 2.0 x)))))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
