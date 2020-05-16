
(define (problem taxiproblem)
(:domain taxi)
(:objects
)
(:init
(= (total-cost) 0)
(in s4)
)
(:goal
(and
(done)
)
)
(:metric minimize (total-cost))
)
