; U91

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* (- x y) (- x y))) (+ (- (* (f x) (f x)) (* (* 2.0 x) (f y))) (* y y)))))

; Find all possible f

(check-sat)
(get-model)
