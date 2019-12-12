
(define (domain minecraft)
  (:requirements :strips :typing)
  (:types moveable static agent)
  (:predicates
    (IsGrass ?arg0 - moveable)
	(IsLog ?arg0 - moveable)
	(IsPlanks ?arg0 - moveable)
	(At ?arg0 - moveable ?arg1 - static)
	(AgentAt ?arg0 - static)
	(Inventory ?arg0 - moveable)
	(Hypothetical ?arg0 - moveable)
	(Equipped ?arg0 - moveable ?arg1 - agent)
    (HandsFree ?arg0 - agent)
    (recall ?arg0 - moveable)
    (move ?arg0 - static)
    (craftplank ?arg0 - moveable ?arg1 - moveable)
    (equip ?arg0 - moveable)
    (pick ?arg0 - moveable)
  )

  ; (:actions recall move craftplank equip pick)

	(:action recall
		:parameters (?Var0 - moveable ?Var1 - agent)
		:precondition (and
            (recall ?Var0)
			(Equipped ?Var0 ?Var1)
		)
		:effect (and
			(Inventory ?Var0)
			(not (Equipped ?Var0 ?Var1))
            (HandsFree ?Var1)
		)
	)

	(:action move
		:parameters (?Var0 - static ?Var1 - static)
		:precondition (and
            (move ?Var0)
			(AgentAt ?Var1)
		)
		:effect (and
			(AgentAt ?Var0)
			(not (AgentAt ?Var1))
		)
	)

	(:action craftplank
		:parameters (?Var0 - moveable ?Var1 - agent ?Var2 - moveable)
		:precondition (and
            (craftplank ?Var0 ?Var2)
			(Hypothetical ?Var0)
			(IsLog ?Var2)
			(Equipped ?Var2 ?Var1)
		)
		:effect (and
			(Inventory ?Var0)
			(IsPlanks ?Var0)
            (HandsFree ?Var1)
			(not (Equipped ?Var2 ?Var1))
			(not (Hypothetical ?Var0))
			(not (IsLog ?Var2))
		)
	)

	(:action equip
		:parameters (?Var0 - moveable ?Var1 - agent)
		:precondition (and
            (equip ?Var0)
			(Inventory ?Var0)
			(HandsFree ?Var1)
		)
		:effect (and
			(Equipped ?Var0 ?Var1)
            (not (HandsFree ?Var1))
			(not (Inventory ?Var0))
		)
	)

	(:action pick
		:parameters (?Var0 - moveable ?Var1 - static)
		:precondition (and
            (pick ?Var0)
			(At ?Var0 ?Var1)
			(AgentAt ?Var1)
		)
		:effect (and
			(Inventory ?Var0)
			(not (At ?Var0 ?Var1))
		)
	))