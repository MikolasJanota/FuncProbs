(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Cvičení 1
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (* x x))))

; Negated constraints
(assert (not (and
  (forall ((x Real) (y Real)) (= (+ (- (+ (f (+ x y)) (* 2.0 (f (- x y)))) (* 4.0 (f x))) (* x (f y))) (+ (- (- (* 3.0 (* y y)) (* x x)) (* (* 2.0 x) y)) (* x (* y y)))))
)))

(check-sat)