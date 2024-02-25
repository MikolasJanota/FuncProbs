; U89 MFF-UK-solving-seminar-2008

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (* (- (f (+ x y)) (f (- x y))) (- (f (+ x y)) (f (- x y)))) (* (f x) (f y)))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
