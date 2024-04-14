(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 33
Original source: IMO-1986-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (>= x 0.0) (=> (and (<= 0.0 x) (< x 2.0)) (= (f x) (/ x (- x 2.0)))))))
(assert (forall ((x Real)) (=> (>= x 0.0) (=> (>= x 2.0) (= (f x) (/ x (- x 2.0)))))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (=> (>= x 0.0) (>= (f x) 0.0)))
  (= (f 2.0) 0.0)
  (forall ((x Real)) (=> (>= x 0.0) (=> (and (<= 0.0 x) (< x 2.0)) (distinct (f x) 0.0))))
  (forall ((x Real) (y Real)) (=> (and (>= x 0.0) (>= y 0.0)) (= (* (f (* x (f y))) (f y)) (f (+ x y)))))
)))

(check-sat)
(exit)
