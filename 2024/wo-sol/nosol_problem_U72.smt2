; U72 PraSe-18-6-2

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (* 2.0 x) y)) (* (f (+ (* 2.0 y) x)) (f (+ x y))))))

; Find all possible f

(check-sat)
(get-model)
