; U9

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- y (f x))) (- (+ (- (f y) (f (f x))) (f x)) x))))

; Find all possible f

(check-sat)
(get-model)
