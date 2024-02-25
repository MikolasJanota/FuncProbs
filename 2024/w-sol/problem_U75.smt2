; U75 PraSe-22-7-5

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (- x y)) (+ (* (f x) (g y)) (* (f y) (g x))))))

; Find all possible f g

; Solutions

(assert (not (exists ((c Real)) (and
  (forall ((x Real)) (= (f x) c))
  (forall ((x Real)) (= (g x) (/ 1.0 2.0)))))))

(assert (not (forall ((x Real)) (= (f x) 0.0))))

(check-sat)
