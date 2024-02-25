; U12 U78 PraSe-25-4-5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (and (distinct x 0.0) (distinct x 1.0)) (= (+ (f x) (f (/ 1.0 (- 1.0 x)))) x))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (and (distinct x 0.0) (distinct x 1.0)) (= (f x) (/ (+ (- (* x x x) x) 1.0) (- (* 2.0 (* x x)) (* 2.0 x))))))))

(check-sat)
