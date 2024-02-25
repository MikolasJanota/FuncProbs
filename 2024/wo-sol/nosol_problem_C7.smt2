; C7

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (and (distinct x 1.0) (distinct x (- 1))) (= (+ (f (/ (- x 3.0) (+ x 1.0))) (f (/ (+ x 3.0) (- 1.0 x)))) x))))

; Find all possible f

(check-sat)
(get-model)
