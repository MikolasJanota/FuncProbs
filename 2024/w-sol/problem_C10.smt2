; C10

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (<= (f x) (f y))))) ; nondecreasing

; Equations
(assert (forall ((x Real)) (= (f (f x)) x)))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) x))))

(check-sat)
