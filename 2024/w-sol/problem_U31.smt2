; U31 IMO-1979-26

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (+ (* x y) x) y)) (+ (+ (f (* x y)) (f x)) (f y)))))

; Negated Goal
(assert (not (forall ((x Real) (y Real)) (= (f (+ x y)) (+ (f x) (f y))))))

(check-sat)
