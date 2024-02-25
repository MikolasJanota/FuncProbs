; U67 Spain-2006

(set-logic UFNIRA)

; Header
(declare-const lambda Real)
(assert (> lambda 0.0))
(declare-fun f (Real) Real)

; Equations
(assert (= (f lambda) 1.0))
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (+ (+ (* (f x) (f y)) (f (/ lambda x))) (f (/ lambda y))) (* 2.0 (f (* x y)))))))

; Find all possible f

(check-sat)
(get-model)
