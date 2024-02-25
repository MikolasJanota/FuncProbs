; U81 PraSe-27-7-3

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real)) (=> (> x 0.0) (= (+ (* (* x x x) (* (f x) (f x) (f x))) 1.0) (* (* x (f x)) (+ 1.0 (* x (f x))))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (> x 0.0) (= (f x) (/ 1.0 x))))))

(check-sat)
