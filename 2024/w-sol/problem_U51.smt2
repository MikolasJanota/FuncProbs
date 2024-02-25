; U51 MEMO-2011

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (+ (* (* y y) (f x)) (* (* x x) (f y))) (* x y)) (+ (+ (* (* x y) (f (+ x y))) (* x x)) (* y y)))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (+ (* c x) 1.0))))))

(check-sat)
