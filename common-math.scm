(define (square x) (* x x))
(define (cube x) (* x (square x)))
(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (average x y)
  (/ (+ x y) 2))
