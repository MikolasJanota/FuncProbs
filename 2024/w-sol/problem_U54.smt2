; U54 APMO-2011

(set-logic AUFNIRA)

; Header
(declare-const m Real)
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real)) (< (f x) m)))
(assert (forall ((x Real) (y Real)) (= (+ (f (* x (f y))) (* y (f x))) (+ (* x (f y)) (f (* x y))))))

; Find all possible f

; Solutions

(assert (not (and
  (forall ((x Real)) (=> (>= x 0.0) (= (f x) 0.0)))
  (forall ((x Real)) (=> (< x 0.0) (= (f x) (* 2.0 x)))))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
