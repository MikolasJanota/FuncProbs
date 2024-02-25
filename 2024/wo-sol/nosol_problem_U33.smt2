; U33 IMO-1986-5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (>= (f x) 0.0))))

; Equations
(assert (= (f 2.0) 0.0))
(assert (forall ((x Real)) (=> (>= x 0.0) (=> (and (<= 0.0 x) (< x 2.0)) (distinct (f x) 0.0)))))
(assert (forall ((x Real) (y Real)) (=> (and (>= x 0.0) (>= y 0.0)) (= (* (f (* x (f y))) (f y)) (f (+ x y))))))

; Find all possible f

(check-sat)
(get-model)
