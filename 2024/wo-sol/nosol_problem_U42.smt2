; U42 IMOSC-2002-A1

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) y)) (+ (* 2.0 x) (f (- (f y) x))))))

; Find all possible f

(check-sat)
(get-model)
