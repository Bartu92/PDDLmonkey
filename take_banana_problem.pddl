(define (problem pb1)

(:domain monkey_banana)

(:objects
	p1 p2 p3 - location
	charlie - monkey
	box_1 banana - item
)

(:init
	(at charlie p2) ; charlie is currently at p1
	(at box_1 p1)
	(not (monkey_high charlie))
	(at banana p3)
	(not (banana_cut banana))
	
)

(:goal (and (not (monkey_high charlie))
	   )
)

)
