; U56 BalticWay-2010-5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (* x x)) (f (* x y))) (+ (+ (* (f x) (f y)) (* y (f x))) (* x (f (+ x y)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(assert (not (forall ((x Real)) (= (f x) (- 2.0 x)))))

(check-sat)
