; U39 IMO-1999-5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- x (f y))) (- (+ (+ (f (f y)) (* x (f y))) (f x)) 1.0))))

; Find all possible f

(check-sat)
(get-model)
