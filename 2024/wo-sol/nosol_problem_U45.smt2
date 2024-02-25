; U45 IMOSC-2009-A7

(set-logic UFNIRA)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real)) (= (f (* x (f (+ x y)))) (+ (f (* y (f x))) (* x x)))))

; Find all possible f

(check-sat)
(get-model)
