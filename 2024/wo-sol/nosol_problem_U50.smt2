; U50 MEMO-2010

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* (f x) (f y))) (+ (+ (f (* x y)) (* (+ y 1.0) (f x))) (* (+ x 1.0) (f y))))))

; Find all possible f

(check-sat)
(get-model)
