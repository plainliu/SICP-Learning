(define (max-two-sum x y z)
    (cond ((> x y) (+ x (if (> y z) y z)))
        (else (+ y (if (> x z) x z)))))

(max-two-sum 1 2 3)
(max-two-sum 2 3 1)
(max-two-sum 3 1 2)
