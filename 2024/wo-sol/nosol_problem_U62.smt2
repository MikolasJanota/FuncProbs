; U62 USAMO-2002

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- (* x x) (* y y))) (- (* x (f x)) (* y (f y))))))

; Find all possible f

(check-sat)
(get-model)
