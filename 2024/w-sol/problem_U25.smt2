; U25 U60 BMO-1997-4 BMO-2000-1

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (* x (f x)) (f y))) (+ y (* (f x) (f x))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(assert (not (forall ((x Real)) (= (f x) (- x)))))

(check-sat)
