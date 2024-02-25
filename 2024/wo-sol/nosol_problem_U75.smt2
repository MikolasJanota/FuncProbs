; U75 PraSe-22-7-5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- x y)) (+ (* (f x) (g y)) (* (f y) (g x))))))

; Find all possible f g

(check-sat)
(get-model)
