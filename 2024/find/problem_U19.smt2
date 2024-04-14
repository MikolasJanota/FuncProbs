(set-info :smt-lib-version 2.6)
(set-logic AUFNIRA)
(set-info :source |
Encoded by: Mirek Olšák, Mikoláš Janota, Chad E. Brown
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 19, Úloha 52
Original source: APMO-1989
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "crafted")
(set-info :status sat)

; Header
(declare-fun f (Real) Real)
(assert (forall ((x Real) (y Real)) (=> (< x y) (< (f x) (f y))))) ; increasing
(declare-fun g (Real) Real)

; Equations
(assert (forall ((x Real)) (= (f (g x)) x)))
(assert (forall ((x Real)) (= (g (f x)) x)))
(assert (forall ((x Real)) (= (+ (f x) (g x)) (* 2.0 x))))

; Find all possible f g

(check-sat)
(exit)
(get-model)
