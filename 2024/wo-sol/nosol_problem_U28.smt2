; U28

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f (f x)) (- (* x x) 2.0))))

; Find all possible f

(check-sat)
(get-model)
