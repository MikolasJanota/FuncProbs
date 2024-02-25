; U87 PraSe-31-4-7

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real) (z Real)) (= (f (+ (+ x (* y y)) z)) (+ (+ (f (f x)) (* y (f y))) (f z)))))

; Find all possible f

(check-sat)
(get-model)
