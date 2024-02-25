; U93

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (f (+ (f x) y)) (* x (f (+ 1.0 (* x y))))))))

; Find all possible f

(check-sat)
(get-model)
