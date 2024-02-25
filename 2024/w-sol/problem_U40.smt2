; U40 IMOSC-2000-A3

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (+ x (g y))) (+ (- (* x (f y)) (* y (f x))) (g x)))))

; Find all possible f g

; Solutions

(assert (not (exists ((c Real)) (and (distinct c (- 1.0)) (and
  (forall ((x Real)) (= (f x) (/ (- (* c x) (* c c)) (+ 1.0 c))))
  (forall ((x Real)) (= (g x) (- (* c x) (* c c)))))))))

(check-sat)
