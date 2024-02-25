; U9

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- y (f x))) (- (+ (- (f y) (f (f x))) (f x)) x))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (= (f x) (+ x c))))))

(check-sat)
