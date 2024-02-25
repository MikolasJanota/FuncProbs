; C13

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (+ (+ (f (f (f x))) (* 4.0 (f (f x)))) (f x)) (* 6.0 x)))))

; Find all possible f

(check-sat)
(get-model)
