(define (problem pb1)

(:domain monkey_banana)

(:objects
	p1 p2 - location
	charlie - monkey
	box_1 - item
)

(:init
	(at charlie p1) ; charlie is currently at p1
)

(:goal (and (at charlie p2) ; I want charlie to be in p2 location
	   )
)

)
