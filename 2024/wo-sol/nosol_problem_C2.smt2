; C2

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (- (* (f x) (f y)) (f (* x y))) (+ x y))))

; Find all possible f

(check-sat)
(get-model)
