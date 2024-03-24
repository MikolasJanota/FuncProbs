(set-info :smt-lib-version 2.6)
(set-logic UFNIRA)
(set-info :source |
Encoded by: Miroslav Olšák
From a collection by: Vít Musil
Source url: https://prase.cz/library/FunkcionalniRovniceVM/FunkcionalniRovniceVM.pdf
Problem number: Úloha 41
Original source: IMO-2002-4
|)
(set-info :license "https://creativecommons.org/licenses/by-nc/4.0/")
(set-info :category "academic")
(set-info :status sat)

; Header
(declare-fun f (Real) Real)

; Equations
(assert (forall ((x Real) (y Real) (u Real) (v Real)) (= (* (+ (f x) (f y)) (+ (f u) (f v))) (+ (f (- (* x u) (* y v))) (f (+ (* x v) (* y u)))))))

; Find all possible f

(check-sat)
(get-model)
