(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 37
Original source: IMO-1994-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (> x (- 1.0)) (= (f x) (- (/ x (+ x 1.0)))))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (=> (> x (- 1.0)) (> (f x) (- 1.0))))
  (forall ((x Real) (y Real)) (=> (and (> x (- 1.0)) (> y (- 1.0))) (= (f (+ (+ x (f y)) (* x (f y)))) (+ (+ y (f x)) (* y (f x))))))
  (forall ((x Real) (y Real)) (=> (and (> x (- 1.0)) (> y (- 1.0))) (=> (and (< x y) (< y 0.0)) (< (/ (f x) x) (/ (f y) y)))))
  (forall ((x Real) (y Real)) (=> (and (> x (- 1.0)) (> y (- 1.0))) (=> (and (< 0.0 x) (< x y)) (< (/ (f x) x) (/ (f y) y)))))
)))

(check-sat)
