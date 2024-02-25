; U41 IMO-2002-4

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real) (u Real) (v Real)) (= (* (+ (f x) (f y)) (+ (f u) (f v))) (+ (f (- (* x u) (* y v))) (f (+ (* x v) (* y u)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (* x x)))))

(assert (not (forall ((x Real)) (= (f x) (/ 1.0 2.0)))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
