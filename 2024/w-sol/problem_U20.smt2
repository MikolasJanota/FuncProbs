; U20 U69 Belarus-1997

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* (f x) (f y))) (+ (+ (f (* x y)) (f x)) (f y)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(assert (not (forall ((x Real)) (= (f x) 2.0))))

(check-sat)
