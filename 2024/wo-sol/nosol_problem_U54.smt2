; U54 APMO-2011

(set-logic UFNIRA)

; Header
(declare-const m Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (< (f x) m)))
(assert (forall ((x Real) (y Real)) (= (+ (f (* x (f y))) (* y (f x))) (+ (* x (f y)) (f (* x y))))))

; Find all possible f

(check-sat)
(get-model)
