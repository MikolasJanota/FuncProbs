; U44 IMO-2008-4

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real) (z Real) (w Real)) (=> (and (> x 0.0) (> y 0.0) (> z 0.0) (> w 0.0)) (= (/ (+ (* (f w) (f w)) (* (f x) (f x))) (+ (f (* y y)) (f (* x x)))) (/ (+ (* w w) (* x x)) (+ (* y y) (* z z)))))))

; Find all possible f

; Solutions

(assert (not (forall ((x Real)) (=> (> x 0.0) (= (f x) x)))))

(assert (not (forall ((x Real)) (=> (> x 0.0) (= (f x) (/ 1.0 x))))))

(check-sat)
