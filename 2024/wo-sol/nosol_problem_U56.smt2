; U56 BalticWay-2010-5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (* x x)) (f (* x y))) (+ (+ (* (f x) (f y)) (* y (f x))) (* x (f (+ x y)))))))

; Find all possible f

(check-sat)
(get-model)
