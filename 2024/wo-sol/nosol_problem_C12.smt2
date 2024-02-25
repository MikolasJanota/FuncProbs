; C12 U35 IMO-1986-5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (* x x) (f y))) (+ y (* (f x) (f x))))))

; Find all possible f

(check-sat)
(get-model)
