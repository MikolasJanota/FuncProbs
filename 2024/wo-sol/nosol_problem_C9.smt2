; C9

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (distinct x y) (distinct (f x) (f y))))) ; injective

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ (f x) y)) (+ (+ (f (* x x)) (* (* 4.0 (f x)) y)) (* 2.0 (* y y))))))

; Find all possible f

(check-sat)
(get-model)
