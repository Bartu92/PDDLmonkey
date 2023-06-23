(define (problem pb1)

(:domain monkey_banana)

(:objects
	p1 p2 p3 p4 - location
	charlie - monkey
	box_1 - object
	banana_1 - object
	knife1 - cutter_ob
)

(:init
	(at charlie p2) ; charlie is currently at p1
	(at box_1 p1)
	(at knife1 p1)
	
)

(:goal (and (holding charlie knife1))
	   )
)

