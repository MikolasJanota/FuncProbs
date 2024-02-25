; U47 IMO-2011-3

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (< (f (+ x y)) (+ (* y (f x)) (f (f x))))))

; Negated Goal
(assert (not (forall ((x Real)) (=> (<= x 0.0) (= (f x) 0.0)))))

(check-sat)
