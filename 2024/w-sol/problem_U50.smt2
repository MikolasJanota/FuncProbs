; U50 MEMO-2010

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* (f x) (f y))) (+ (+ (f (* x y)) (* (+ y 1.0) (f x))) (* (+ x 1.0) (f y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (+ (* x x) x)))))

(assert (not (forall ((x Real)) (= (f x) (* 3.0 x)))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
