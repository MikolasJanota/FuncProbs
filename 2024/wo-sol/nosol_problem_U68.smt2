; U68 Romania-2009

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (* (f x) (f y))) (+ (+ (f (* x y)) (f x)) (f y)))))

; Find all possible f

(check-sat)
(get-model)
