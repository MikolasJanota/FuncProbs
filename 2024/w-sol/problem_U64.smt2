; U64 Vietnam-2005

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (f (- x y))) (- (+ (- (* (f x) (f y)) (f x)) (f y)) (* x y)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (- x)))))

(check-sat)
