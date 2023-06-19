#!/usr/bin/env python3

import unified_planning.shortcuts as up
from unified_planning.io.pddl_reader import PDDLReader

pddl_reader = PDDLReader()
problems = ['goto_problem.pddl','take_knife_problem.pddl']

for problem in problems:
    print(f'solving problem: {problem}')
    up_problem = pddl_reader.parse_problem('monkey_domain2.pddl', problem)

    with up.OneshotPlanner(name='fast-downward') as planner:
        result = planner.solve(up_problem)
        if result.status in up.unified_planning.engines.results.POSITIVE_OUTCOMES:
            print(f'{planner.name} found this plan: {result.plan}')
        else:
            print('No plan found.')
    print('--------------------------')
