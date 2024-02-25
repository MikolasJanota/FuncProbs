; U5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ (* x y) 1.0)) (f (+ x y))) (* (+ (f x) 1.0) (+ y 1.0)))))

; Find all possible f

(check-sat)
(get-model)
