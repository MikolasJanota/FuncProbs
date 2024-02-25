; U8 U86 PraSe-27-8-7b

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ x (f y))) (+ (+ (f x) (* (f y) (f y))) (* (* 2.0 x) (f y))))))

; Find all possible f

(check-sat)
(get-model)
