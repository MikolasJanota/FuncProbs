; U14 U59 CPSM-2009-1

(set-logic AUFNIRA)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (* (+ 1.0 (* y (f x))) (- 1.0 (* y (f (+ x y))))) 1.0))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (and (> c 0.0) (forall ((x Real)) (=> (> x 0.0) (= (f x) (/ 1.0 (+ x c)))))))))

(check-sat)
