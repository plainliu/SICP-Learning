(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

(a-plus-abs-b 2 1)
(a-plus-abs-b 2 -1)
