; U49 MEMO-2009

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (* x (f x))) (f (+ (f x) (f y)))) (+ (* y (f x)) (f (+ x (f y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
