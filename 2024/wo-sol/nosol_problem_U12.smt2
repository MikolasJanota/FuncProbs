; U12 U78 PraSe-25-4-5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (and (distinct x 0.0) (distinct x 1.0)) (= (+ (f x) (f (/ 1.0 (- 1.0 x)))) x))))

; Find all possible f

(check-sat)
(get-model)
