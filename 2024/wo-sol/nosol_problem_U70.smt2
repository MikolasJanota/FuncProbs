; U70 Bulgaria-1998

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (>= (* (f x) (f x)) (* (f (+ x y)) (+ (f x) y))))))

(check-sat)
(get-model)
