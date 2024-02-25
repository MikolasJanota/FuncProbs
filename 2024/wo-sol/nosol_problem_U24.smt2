; U24 U55 BalticWay-1998-7

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f x) (f y)) (f (* (f x) (f y))))))

; Find all possible f

(check-sat)
(get-model)
