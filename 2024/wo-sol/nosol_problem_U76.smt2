; U76 PraSe-22-7-8

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (>= (f x) 0.0))))
(assert (forall ((x Real) (y Real)) (=> (and (>= x 0.0) (>= y 0.0)) (=> (< x y) (< (f x) (f y)))))) ; increasing

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (>= x 0.0) (>= y 0.0)) (= (f (* y (f x))) (* (* x x) (f (* x y)))))))

; Find all possible f

(check-sat)
(get-model)
