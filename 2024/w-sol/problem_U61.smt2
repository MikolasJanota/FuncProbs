; U61 CSMO-60-A-III-6

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (* (f x) (f y)) (+ (* (f y) (f (* x (f y)))) (/ 1.0 (* x y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (> x 0.0) (= (f x) (+ 1.0 (/ 1.0 x)))))))

(check-sat)
