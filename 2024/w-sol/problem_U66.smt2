; U66 Iran-1999

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) y)) (+ (f (- (* x x) y)) (* (* 4.0 (f x)) y)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (* x x)))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
