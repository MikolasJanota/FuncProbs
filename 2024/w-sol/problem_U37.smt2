; U37 IMO-1994-5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x (- 1.0)) (> (f x) (- 1.0)))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x (- 1.0)) (> y (- 1.0))) (= (f (+ (+ x (f y)) (* x (f y)))) (+ (+ y (f x)) (* y (f x)))))))
(assert (forall ((x Real) (y Real)) (=> (and (> x (- 1.0)) (> y (- 1.0))) (=> (and (< x y) (< y 0.0)) (< (/ (f x) x) (/ (f y) y))))))
(assert (forall ((x Real) (y Real)) (=> (and (> x (- 1.0)) (> y (- 1.0))) (=> (and (< 0.0 x) (< x y)) (< (/ (f x) x) (/ (f y) y))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (> x (- 1.0)) (= (f x) (- (/ x (+ x 1.0))))))))

(check-sat)
