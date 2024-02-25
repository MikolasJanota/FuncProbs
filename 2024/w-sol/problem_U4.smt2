; U4

(set-logic AUFNIRA)

; Special functions
(declare-fun sqrt (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (>= (sqrt x) 0.0))))
(assert (forall ((x Real)) (=> (>= x 0.0) (= (* (sqrt x) (sqrt x)) x))))

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (f (* x x)) (- (+ x (f y)) (/ y (f y)))))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (=> (> x 0.0) (= (f x) (sqrt x)))))))

(check-sat)
