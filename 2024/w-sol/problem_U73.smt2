; U73 PraSe-18-6-7

(set-logic AUFNIRA)

; Special functions
(declare-fun sqrt (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (>= (sqrt x) 0.0))))
(assert (forall ((x Real)) (=> (>= x 0.0) (= (* (sqrt x) (sqrt x)) x))))
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
(assert (exists ((y Real)) (forall ((x Real)) (<= (- y) (f x) y)))) ; bounded

; Equations
(assert (forall ((x Real)) (= (* 2.0 (f (+ x (/ pi 6.0)))) (- (+ (* (sqrt 3.0) (f x)) (cos x)) (sin x)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (+ (sin x) (cos x))))))

(check-sat)
