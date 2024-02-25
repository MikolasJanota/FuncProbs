; U49 MEMO-2009

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (* x (f x))) (f (+ (f x) (f y)))) (+ (* y (f x)) (f (+ x (f y)))))))

; Find all possible f

(check-sat)
(get-model)
