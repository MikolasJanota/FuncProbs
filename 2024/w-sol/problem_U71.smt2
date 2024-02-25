; U71 PraSe-18-6-1

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (* y (f x)) (* x (f y))) (f (+ x y)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
