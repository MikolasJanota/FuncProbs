; C4

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ (* x x) y)) (f (- (f x) y))) (+ (* 2.0 (f (f x))) (* 2.0 (* y y))))))

; Find all possible f

(check-sat)
(get-model)
