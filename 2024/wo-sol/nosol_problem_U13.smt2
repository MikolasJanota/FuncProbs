; U13

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) (f y))) (+ (f x) y))))

; Find all possible f

(check-sat)
(get-model)
