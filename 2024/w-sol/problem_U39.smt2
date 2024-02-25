; U39 IMO-1999-5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- x (f y))) (- (+ (+ (f (f y)) (* x (f y))) (f x)) 1.0))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (- 1.0 (/ (* x x) 2.0))))))

(check-sat)
