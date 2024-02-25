; C8 U32 IMOSC-1979-26

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) (f x)))))))

; Equations
(assert (= (f 1.0) 2.0))
(assert (forall ((x Real) (y Real)) (=> (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) y)))) (= (f (* x y)) (+ (- (* (f x) (f y)) (f (+ x y))) 1.0)))))

; Find all possible f

(check-sat)
(get-model)
