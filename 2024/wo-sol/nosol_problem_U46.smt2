; U46 IMO-2010-1

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* (to_real (to_int x)) y)) (* (f x) (to_real (to_int (f y)))))))

; Find all possible f

(check-sat)
(get-model)
