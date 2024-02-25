; U87 PraSe-31-4-7

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real) (z Real)) (= (f (+ (+ x (* y y)) z)) (+ (+ (f (f x)) (* y (f y))) (f z)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
