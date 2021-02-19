(include "common-math.scm")
(define (sqrt x)
  (define (sqrt-iter guess)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess))))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  (define (improve guess)
    (average guess (/ x guess)))
  (sqrt-iter 1))

  (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))
  (define (improve guess x)
    (/  (+  (/ x (square guess)) (* 2 guess)) 3))


