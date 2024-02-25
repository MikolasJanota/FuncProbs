; U48 MEMO-2008

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (* x (f (+ x (* x y)))) (+ (* x (f x)) (* (f (* x x)) (f y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
