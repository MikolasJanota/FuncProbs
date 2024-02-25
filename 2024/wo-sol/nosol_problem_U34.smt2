; U34 IMO-1990-4

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (> x 0.0)) (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) (f x)))) (> (f x) 0.0)))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (> x 0.0) (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) y))) (> y 0.0)) (= (f (* x (f y))) (/ (f x) y)))))

; Find an example of f

(check-sat)
(get-model)
