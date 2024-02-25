; U11

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (+ (* (* x x x) (* (f x) (f x) (f x))) 1.0) (* (* x (f x)) (+ 1.0 (* x (f x))))))))

; Find all possible f

(check-sat)
(get-model)
