; U46 IMO-2010-1

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* (to_real (to_int x)) y)) (* (f x) (to_real (to_int (f y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(assert (not (exists ((c Real)) (and (and (>= c 1.0) (< c 2.0)) (forall ((x Real)) (= (f x) c))))))

(check-sat)
