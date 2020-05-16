
(define (problem taxiproblem)
(:domain taxi)
(:objects
)
(:init
(= (total-cost) 0)
(in s0)
)
(:goal
(and
(done)
)
)
(:metric minimize (total-cost))
)
