(define (problem pb1)

(:domain monkey_banana)

(:objects
	p1 p2 - location
	charlie - monkey
	box_1 - item
)

(:init
	(at charlie p2) ; charlie is currently at p1
	(at box_1 p2)
	(monkey_high charlie)
)

(:goal (and (not (monkey_high charlie))
	   )
)

)
