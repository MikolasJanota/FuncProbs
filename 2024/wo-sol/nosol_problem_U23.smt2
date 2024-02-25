; U23 U74 PraSe-22-7-4

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real) (z Real)) (>= (- (+ (* (/ 1.0 2.0) (f (* x y))) (* (/ 1.0 2.0) (f (* x y)))) (* (f x) (f (* y z)))) (/ 1.0 4.0))))

; Find all possible f

(check-sat)
(get-model)
