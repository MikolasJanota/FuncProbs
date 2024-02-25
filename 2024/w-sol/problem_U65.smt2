; U65 Iran-1997

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (f (+ (f x) (f y)))) (+ (f (f (+ x (f y)))) (f (+ y (f x)))))))

; Negated Goal
(assert (not (forall ((x Real)) (= (f (f x)) x))))

(check-sat)
