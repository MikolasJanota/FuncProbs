; C2

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (- (* (f x) (f y)) (f (* x y))) (+ x y))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (+ x 1.0)))))

(check-sat)
