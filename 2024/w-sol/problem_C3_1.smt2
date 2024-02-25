; C3 U85 PraSe-27-7-8a

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
; (assert (forall ((x Real) (y Real)) (= (f (+ x (f y))) (+ (+ (* x x) (* (f y) (f y))) (* (* 2.0 x) (f y))))))
(assert (forall ((x Real) (y Real)) (= (f (+ x (f y))) (* (+ x (f y)) (+ x (f y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (* x x)))))

(check-sat)
