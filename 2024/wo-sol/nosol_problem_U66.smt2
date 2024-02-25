; U66 Iran-1999

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) y)) (+ (f (- (* x x) y)) (* (* 4.0 (f x)) y)))))

; Find all possible f

(check-sat)
(get-model)
