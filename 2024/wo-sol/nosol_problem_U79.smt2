; U79 PraSe-25-4-8

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (f (+ x (f y)))) (- (f (+ x y)) (f (+ y (f x)))))))

; Find all possible f

(check-sat)
(get-model)
