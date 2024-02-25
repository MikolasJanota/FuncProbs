; U37 IMO-1994-5

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x (- 1)) (> (f x) (- 1)))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x (- 1)) (> y (- 1))) (= (f (+ (+ x (f y)) (* x (f y)))) (+ (+ y (f x)) (* y (f x)))))))
(assert (forall ((x Real) (y Real)) (=> (and (> x (- 1)) (> y (- 1))) (=> (and (< x y) (< y 0.0)) (< (/ (f x) x) (/ (f y) y))))))
(assert (forall ((x Real) (y Real)) (=> (and (> x (- 1)) (> y (- 1))) (=> (and (< 0.0 x) (< x y)) (< (/ (f x) x) (/ (f y) y))))))

; Find all possible f

(check-sat)
(get-model)
