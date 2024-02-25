; U30 IMO-1972-5

(set-logic AUFNIRA)

; Special functions
(declare-fun rabs (Real) Real)
(assert (forall ((x Real)) (=> (>= x 0.0) (= (rabs x) x))))
(assert (forall ((x Real)) (=> (<= x 0.0) (= (rabs x) (- x)))))

; Header
(declare-const c Real)
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (+ (f (+ x y)) (f (- x y))) (* (* 2.0 (f x)) (g y)))))
(assert (forall ((x Real)) (<= (rabs (f x)) 1.0)))
(assert (distinct (f c) 0.0))

; Negated Goal
(assert (not (forall ((x Real)) (<= (g x) 1.0))))

(check-sat)
