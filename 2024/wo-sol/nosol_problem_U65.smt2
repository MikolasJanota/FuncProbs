; U65 Iran-1997

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (f (+ (f x) (f y)))) (+ (f (f (+ x (f y)))) (f (+ y (f x)))))))

(check-sat)
(get-model)
