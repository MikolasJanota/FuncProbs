(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 14, Úloha 59
Original source: CPSM-2009-1
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real)) (=> (> x 0.0) (> (f x) 0.0))))

; Equations
(assert (forall ((x Real) (y Real)) (=> (and (> x 0.0) (> y 0.0)) (= (* (+ 1.0 (* y (f x))) (- 1.0 (* y (f (+ x y))))) 1.0))))

; Find all possible f

; Solutions

(assert (not (exists ((c Real)) (and (> c 0.0) (forall ((x Real)) (=> (> x 0.0) (= (f x) (/ 1.0 (+ x c)))))))))

(check-sat)
