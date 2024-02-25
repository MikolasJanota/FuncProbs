; C6 U77 PraSe-25-4-3

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* 2.0 (f (- x y)))) (- (* 3.0 (f y)) y))))

; Find all possible f

(check-sat)
(get-model)
