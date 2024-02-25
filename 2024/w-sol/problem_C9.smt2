; C9

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (distinct (f x) (f y))))) ; injective

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) y)) (+ (+ (f (* x x)) (* (* 4.0 (f x)) y)) (* 2.0 (* y y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (= (f x) (* 2.0 (* x x))))))

(check-sat)
