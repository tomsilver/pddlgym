
(define (problem taxiproblem)
(:domain taxi)
(:objects
)
(:init
(= (total-cost) 0)
(in s5)
)
(:goal
(and
(done)
)
)
(:metric minimize (total-cost))
)
