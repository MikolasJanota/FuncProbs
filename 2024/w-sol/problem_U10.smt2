; U10 U83 PraSe-27-7-6

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ (* x x) y)) (f (- (f x) y))) (+ (* 2.0 (f (f x))) (* 2.0 (* y y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (* x x)))))

(check-sat)
