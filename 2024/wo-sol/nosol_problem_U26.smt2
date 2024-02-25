; U26 U84 PraSe-27-7-8

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))
(assert (or (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (=> (< x y) (<= (f x) (f y))))) (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (=> (< x y) (>= (f x) (f y))))))) ; monotonic

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (* (f (* x y)) (f (/ (f y) x))) 1.0))))

; Find all possible f

(check-sat)
(get-model)
