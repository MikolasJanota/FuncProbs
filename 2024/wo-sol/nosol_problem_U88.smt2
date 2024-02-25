; U88 PraSe-31-4-8

(set-logic UFNIRA)

; Special functions
(declare-fun rabs (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (= (rabs x) x))))
(assert (forall ((x Real)) (=> (<= x 0.0) (= (rabs x) (- x)))))

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (distinct x 3.0) (= (f (f x)) (/ 1.0 (rabs (- x 3.0)))))))

; Find all possible f

(check-sat)
(get-model)
