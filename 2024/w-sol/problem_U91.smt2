; U91

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* (- x y) (- x y))) (+ (- (* (f x) (f x)) (* (* 2.0 x) (f y))) (* y y)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (+ x 1.0)))))

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
