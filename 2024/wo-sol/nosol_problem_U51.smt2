; U51 MEMO-2011

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (+ (* (* y y) (f x)) (* (* x x) (f y))) (* x y)) (+ (+ (* (* x y) (f (+ x y))) (* x x)) (* y y)))))

; Find all possible f

(check-sat)
(get-model)
