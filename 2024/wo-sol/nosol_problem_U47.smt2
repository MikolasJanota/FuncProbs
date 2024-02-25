; U47 IMO-2011-3

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (< (f (+ x y)) (+ (* y (f x)) (f (f x))))))

(check-sat)
(get-model)
