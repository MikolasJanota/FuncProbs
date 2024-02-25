; C5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real)) (=> (distinct x 0.0) (= (/ (f x) x) (/ (+ (* (f x) (f x)) 2.0) (+ (* 2.0 (* x x)) 1.0))))))

; Find all possible f

(check-sat)
(get-model)
