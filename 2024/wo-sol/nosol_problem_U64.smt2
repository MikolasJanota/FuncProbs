; U64 Vietnam-2005

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (f (- x y))) (- (+ (- (* (f x) (f y)) (f x)) (f y)) (* x y)))))

; Find all possible f

(check-sat)
(get-model)
