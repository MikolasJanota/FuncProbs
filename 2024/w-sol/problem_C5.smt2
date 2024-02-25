; C5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real)) (=> (distinct x 0.0) (= (/ (f x) x) (/ (+ (* (f x) (f x)) 2.0) (+ (* 2.0 (* x x)) 1.0))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (distinct x 0.0) (or (= (f x) (* 2.0 x)) (= (f x) (/ 1.0 x)))))))

(check-sat)
