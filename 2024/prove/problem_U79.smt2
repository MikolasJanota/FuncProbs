(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 79
Original source: PraSe-25-4-8
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status unsat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (> (f x) (f y))))) ; decreasing

; Equations
(assert (forall ((x Real) (y Real)) (= (f (f (+ x (f y)))) (- (f (+ x y)) (f (+ y (f x)))))))

; Find all possible f

; No Solutions

(check-sat)
(exit)
