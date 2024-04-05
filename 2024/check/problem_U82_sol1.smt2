(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 82
Original source: PraSe-27-7-5
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Special functions
(declare-const pi Real)
(declare-fun sin (Real) Real)
(assert (forall ((x Real)) (and (>= (sin x) (- 1.0)) (<= (sin x) 1.0))))
(declare-fun cos (Real) Real)
(assert (forall ((x Real)) (and (>= (cos x) (- 1.0)) (<= (cos x) 1.0))))
(assert (= (sin 0.0) 0.0))
(assert (= (cos 0.0) 1.0))
(assert (forall ((x Real)) (= (sin (+ x pi)) (- (sin x)))))
(assert (forall ((x Real)) (= (cos (+ x pi)) (- (cos x)))))
(assert (forall ((x Real)) (= (cos x) (sin (+ x (/ pi 2.0))))))
(assert (forall ((x Real)) (= (+ (* (sin x) (sin x)) (* (cos x) (cos x))) 1.0)))
(assert (forall ((x Real)) (= (sin (- x)) (- (sin x)))))
(assert (forall ((x Real)) (= (cos (- x)) (cos x))))
(assert (forall ((x Real) (y Real)) (= (sin (+ x y)) (+ (* (sin x) (cos y)) (* (cos x) (sin y))))))
(assert (forall ((x Real) (y Real)) (= (cos (+ x y)) (- (* (cos x) (cos y)) (* (sin x) (sin y))))))

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f x) (sin x))))

; Negated constraints
(assert (not (and
  (forall ((x Real)) (= (+ (f x) (* x (f (- x)))) (* (- 1.0 x) (sin x))))
)))

(check-sat)
