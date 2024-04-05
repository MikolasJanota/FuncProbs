(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 43
Original source: IMOSC-2003-A5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Special functions
(declare-fun sqrt (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (>= (sqrt x) 0.0))))
(assert (forall ((x Real)) (=> (>= x 0.0) (= (* (sqrt x) (sqrt x)) x))))
(declare-fun power (Real Real) Real)
(declare-fun exp (Real) Real)
(assert (forall ((x Real)) (> (exp x) 0.0)))
(declare-fun log (Real) Real)
(assert (= (exp 0.0) 1.0))
(assert (= (log 1.0) 0.0))
(assert (forall ((a Real) (b Real)) (= (exp (+ a b)) (* (exp a) (exp b)))))
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (+ (log x) (log y)) (log (* x y))))))
(assert (forall ((a Real) (x Real)) (=> (> x 0.0) (= (power x a) (exp (* (log x) a))))))
(assert (forall ((x Real)) (=> (> x 0.0) (= (power 0.0 x) 0.0))))
(assert (forall ((a Real)) (= (log (exp a)) a)))
(assert (forall ((x Real)) (=> (> x 0.0) (= (exp (log x)) x))))

; Header
(declare-const c Real)
(assert (> c 0.0))
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (f x) (+ (power x c) (power x (- c)))))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0)))
  (forall ((x Real) (y Real) (z Real)) (=> (and (> x 0.0) (> y 0.0) (> z 0.0)) (= (+ (+ (+ (f (* (* x y) z)) (f x)) (f y)) (f z)) (* (* (f (sqrt (* x y))) (f (sqrt (* y z)))) (f (sqrt (* x z)))))))
  (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (=> (and (<= 1.0 x) (< x y)) (< (f x) (f y)))))
)))

(check-sat)
