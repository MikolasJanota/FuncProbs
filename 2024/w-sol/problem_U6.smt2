; U6 U80 PraSe-27-7-1

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (- (f (+ x y)) (f (- x y))) (* x y))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (+ (/ (* x x) 4.0) c))))))

(check-sat)
