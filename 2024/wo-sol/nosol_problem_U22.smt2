; U22

(set-logic UFNIRA)

; Special functions
(declare-fun power (Real Real) Real)
(declare-fun exp (Real) Real)
(assert (forall ((x Real)) (> (exp x) 0.0)))
(declare-fun log (Real) Real)
(assert (= (exp 0.0) 1.0))
(assert (= (log 1.0) 0.0))
(assert (forall ((a Real) (b Real)) (= (exp (+ a b)) (* (exp a) (exp b)))))
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (+ (log x) (log y)) (log (* x y))))))
(assert (forall ((a Real) (x Real)) (=> (> x 0.0) (= (power x a) (exp (* (log x) a))))))
(assert (forall ((x Real)) (=> (> x 0.0) (= (power 0.0 x) 0.0))))
(assert (forall ((a Real)) (= (log (exp a)) a)))
(assert (forall ((x Real)) (=> (> x 0.0) (= (exp (log x)) x))))

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (=> (< x y) (< (f x) (f y)))))) ; increasing

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* x y)) (+ (f x) (f y)))))

; Find all possible f

(check-sat)
(get-model)
