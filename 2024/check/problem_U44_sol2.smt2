(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 44
Original source: IMO-2008-4
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (f x) (/ 1.0 x)))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0)))
  (forall ((x Real) (y Real) (z Real) (w Real)) (=> (and (> x 0.0) (> y 0.0) (> z 0.0) (> w 0.0)) (= (/ (+ (* (f w) (f w)) (* (f x) (f x))) (+ (f (* y y)) (f (* z z)))) (/ (+ (* w w) (* x x)) (+ (* y y) (* z z))))))
)))

(check-sat)
