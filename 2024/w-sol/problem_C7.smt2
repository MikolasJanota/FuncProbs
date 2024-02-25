; C7

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (=> (and (distinct x 1.0) (distinct x (- 1.0))) (= (+ (f (/ (- x 3.0) (+ x 1.0))) (f (/ (+ x 3.0) (- 1.0 x)))) x))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (and (distinct x 1.0) (distinct x (- 1.0))) (= (f x) (+ (* x x x) (/ (* 7.0 x) (* 2.0 (- 1.0 (* x x))))))))))

(check-sat)
