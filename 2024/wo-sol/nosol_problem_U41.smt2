; U41 IMO-2002-4

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real) (u Real) (v Real)) (= (* (+ (f x) (f y)) (+ (f u) (f v))) (+ (f (- (* x u) (* y v))) (f (+ (* x v) (* y u)))))))

; Find all possible f

(check-sat)
(get-model)
