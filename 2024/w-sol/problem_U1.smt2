; U1

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) y)))) (= (f (+ x y)) (+ (f x) (f y))))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (forall ((x Real)) (=> (exists ((numerator Int) (denominator Int)) (and (distinct denominator 0) (= (/ (to_real numerator) (to_real denominator)) x))) (= (f x) (* c x)))))))

(check-sat)
