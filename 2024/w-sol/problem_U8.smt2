; U8 U86 PraSe-27-8-7b

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ x (f y))) (+ (+ (f x) (* (f y) (f y))) (* (* 2.0 x) (f y))))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (+ (* x x) c))))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
