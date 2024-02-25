; U5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ (* x y) 1.0)) (f (+ x y))) (* (+ (f x) 1.0) (+ y 1.0)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
