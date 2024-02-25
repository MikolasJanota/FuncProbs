; C1

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (- (+ (f (+ x y)) (* 2.0 (f (- x y)))) (* 4.0 (f x))) (* x (f y))) (+ (- (- (* 3.0 (* y y)) (* x x)) (* (* 2.0 x) y)) (* x (* y y))))))

; Find all possible f

(check-sat)
(get-model)
