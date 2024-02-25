; U43 IMOSC-2003-A5

(set-logic AUFNIRA)

; Special functions
(declare-fun sqrt (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (>= (sqrt x) 0.0))))
(assert (forall ((x Real)) (=> (>= x 0.0) (= (* (sqrt x) (sqrt x)) x))))
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
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real) (z Real)) (=> (and (> x 0.0) (> y 0.0) (> z 0.0)) (= (+ (+ (+ (f (* (* x y) z)) (f x)) (f y)) (f z)) (* (* (f (sqrt (* x y))) (f (sqrt (* y z)))) (f (sqrt (* x z))))))))
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (=> (and (<= 1.0 x) (< x y)) (< (f x) (f y))))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (and (> c 0.0) (forall ((x Real)) (=> (> x 0.0) (= (f x) (+ (power x c) (power x (- c))))))))))

(check-sat)
