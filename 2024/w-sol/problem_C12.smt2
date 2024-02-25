; C12 U35 IMO-1986-5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (* x x) (f y))) (+ y (* (f x) (f x))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
