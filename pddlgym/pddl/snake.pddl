(define (domain snake)
(:requirements :strips :negative-preconditions)
(:constants
    dummypoint
)
(:predicates
    ;up down left right of a field
    (ISADJACENT ?x ?y)
    ;the last field of the snake
    (tailsnake ?x)
    ;the first field of the snake
    (headsnake ?x)
    ;pieces of the snake that are connected. from front to back
    (nextsnake ?x ?y)
    ;a field that is occupied by the snake or by an obstacle
    (blocked ?x)
    ;next point that will spawn
    (spawn ?x)
    ;point y will spawn after point x
    (NEXTSPAWN ?x ?y)
    ;a field that has a point that can be collected by the snake
    (ispoint ?x)
)
(:action move
    :parameters (?head ?newhead ?tail ?newtail)
    :precondition
    (and
        (headsnake ?head)
        (ISADJACENT ?head ?newhead)
        (tailsnake ?tail)
        (nextsnake ?newtail ?tail)
        (not (blocked ?newhead))
        (not (ispoint ?newhead))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (blocked ?tail))
        (not (tailsnake ?tail))
        (not (nextsnake ?newtail ?tail))
        (tailsnake ?newtail)
    )
)

(:action move-and-eat-spawn
    :parameters (?head ?newhead ?spawnpoint ?nextspawnpoint)
    :precondition
    (and
        (headsnake ?head)
        (ISADJACENT ?head ?newhead)
        (not (blocked ?newhead))
        (ispoint ?newhead)
        (spawn ?spawnpoint)
        (NEXTSPAWN ?spawnpoint ?nextspawnpoint)
        (not (= ?spawnpoint dummypoint))
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
        (ispoint ?spawnpoint)
        (not (spawn ?spawnpoint))
        (spawn ?nextspawnpoint)
    )
)

(:action move-and-eat-no-spawn
    :parameters (?head ?newhead)
    :precondition
    (and
        (headsnake ?head)
        (ISADJACENT ?head ?newhead)
        (not (blocked ?newhead))
        (ispoint ?newhead)
        (spawn dummypoint)
    )
    :effect
    (and
        (blocked ?newhead)
        (headsnake ?newhead)
        (nextsnake ?newhead ?head)
        (not (headsnake ?head))
        (not (ispoint ?newhead))
    )
)

)