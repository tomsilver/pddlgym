from pddlgym.core import PDDLEnv
from pddlgym.rendering import block_words_render
import os
import itertools
import numpy as np


class InversePlanningBlocksPDDLEnv(PDDLEnv):
    """Blocks domain and problems from Ramirez & Geffner, 2010.
    """
    dir_path = os.path.join(os.path.dirname(os.path.realpath(__file__)), "pddl")
    domain_file = os.path.join(dir_path, "block-words.pddl")
    problem_dir = os.path.join(dir_path, "block-words")

    def __init__(self, seed=0):
        super().__init__(self.domain_file, self.problem_dir, render=block_words_render, 
                 seed=seed,
                 raise_error_on_invalid_action=True,
                 operators_as_actions=True,
                 dynamic_action_space=True,
                 compute_approx_reachable_set=False,
                 shape_reward_mode=None)
        self._clear = self.domain.predicates['clear']
        self._eq = self.domain.predicates['eq']
        self._holding = self.domain.predicates['holding']
        self._on = self.domain.predicates['on']
        self._ontable = self.domain.predicates['ontable']
        self._handempty = self.domain.predicates['handempty']
        self._pickup = self.domain.predicates['pick-up']
        self._putdown = self.domain.predicates['put-down']
        self._stack = self.domain.predicates['stack']
        self._unstack = self.domain.predicates['unstack']
        self._rng = np.random.RandomState(seed=seed)

    @staticmethod
    def get_piles_from_obs(obs):
        on_links = {}
        pile_bottoms = set()
        all_objs = set()
        holding = None
        for lit in obs:
            if lit.predicate.name == "ontable":
                pile_bottoms.add(lit.variables[0])
                all_objs.add(lit.variables[0])
            elif lit.predicate.name == "on":
                on_links[lit.variables[1]] = lit.variables[0]
                all_objs.update(lit.variables)
            elif lit.predicate.name == "holding":
                holding = lit.variables[0]
                all_objs.add(lit.variables[0])
        all_objs = sorted(all_objs)

        bottom_to_pile = {}
        for obj in pile_bottoms:
            bottom_to_pile[obj] = [obj]
            key = obj
            while key in on_links:
                assert on_links[key] not in bottom_to_pile[obj]
                bottom_to_pile[obj].append(on_links[key])
                key = on_links[key]

        piles = []
        for pile_base in all_objs:
            if pile_base in bottom_to_pile:
                piles.append(bottom_to_pile[pile_base])
            else:
                piles.append([])

        return piles, holding

    def get_valid_actions(self):
        valid_actions = []

        piles, holding = self.get_piles_from_obs(self._state)
        piles = [pile for pile in piles if len(pile) > 0]

        """
        (:action pick-up
         :parameters (?x - block)
         :precondition (and (clear ?x) (ontable ?x) (handempty))
        """
        if holding is None:
            for pile in piles:
                if len(pile) == 1:
                    block = pile[0]
                    valid_actions.append(self._pickup(block))

        """
        (:action put-down
         :parameters (?x - block)
         :precondition (holding ?x)
        """
        if holding is not None:
            valid_actions.append(self._putdown(holding))

        """
        (:action stack
         :parameters (?x - block ?y - block)
         :precondition (and (holding ?x) (clear ?y) (not (eq ?x ?y)))
        """
        if holding is not None:
            for pile in piles:
                top = pile[-1]
                valid_actions.append(self._stack(holding, top))

        """
        (:action unstack
         :parameters (?x - block ?y - block)
         :precondition (and (on ?x ?y) (clear ?x) (handempty) (not (eq ?x ?y)))
        """
        if holding is None:
            for pile in piles:
                if len(pile) > 1:
                    top, below = pile[-1], pile[-2]
                    valid_actions.append(self._unstack(top, below))

        return valid_actions

    def sample_state(self):
        blocks = self._extract_blocks_from_state(self._state)
        if self._rng.randint(2):
            return self._sample_state_where_not_holding(blocks)
        block = blocks[self._rng.choice(len(blocks))]
        other_blocks = [b for b in blocks if b != block]
        return self._sample_state_where_holding(other_blocks, block)

    def get_all_states(self):
        blocks = self._extract_blocks_from_state(self._state)
        all_states = []

        for block in blocks:
            other_blocks = [b for b in blocks if b != block]
            all_states += self._get_states_where_holding(other_blocks, block)
        all_states += self._get_states_where_not_holding(blocks)

        return all_states

    def _extract_blocks_from_state(self, state):
        blocks = set()
        for lit in state:
            blocks.update(lit.variables)
        return sorted(blocks)

    def _get_states_where_holding(self, other_blocks, block):
        states = []
        for stacks in self._get_all_stacks(other_blocks):
            state = self._get_state_from_stacks(stacks)
            state |= {self._holding(block)}
            self._add_eqs_to_state(other_blocks + [block], state)
            states.append(state)
        return states

    def _sample_state_where_holding(self, other_blocks, block):
        stacks = self._sample_stacks(other_blocks)
        state = self._get_state_from_stacks(stacks)
        state |= {self._holding(block)}
        self._add_eqs_to_state(other_blocks + [block], state)
        return state

    def _get_states_where_not_holding(self, blocks):
        states = []
        for stacks in self._get_all_stacks(blocks):
            state = self._get_state_from_stacks(stacks)
            state |= {self._handempty()}
            self._add_eqs_to_state(blocks, state)
            states.append(state)
        return states

    def _sample_state_where_not_holding(self, blocks):
        stacks = self._sample_stacks(blocks)
        state = self._get_state_from_stacks(stacks)
        state |= {self._handempty()}
        self._add_eqs_to_state(blocks, state)
        return state

    def _add_eqs_to_state(self, blocks, state):
        for block in blocks:
            state.add(self._eq(block, block))

    def _sample_stacks(self, blocks):
        stack_idxs = sample_partition(list(range(len(blocks))), self._rng)
        return [[blocks[i] for i in idxs] for idxs in stack_idxs]

    def _get_all_stacks(self, blocks):
        for stack_idxs in get_all_partitions(list(range(len(blocks)))):
            yield [[blocks[i] for i in idxs] for idxs in stack_idxs]

    def _get_state_from_stacks(self, stacks):
        seen_blocks = set()
        state = set()
        for stack in stacks:
            assert len(stack) > 0
            assert len(set(stack) & seen_blocks) == 0
            seen_blocks.update(stack)
            block_on_table = stack[-1]
            block_on_top = stack[0]
            state.add(self._ontable(block_on_table))
            state.add(self._clear(block_on_top))
            for i in range(1, len(stack)):
                state.add(self._on(stack[i-1], stack[i]))
        return state

class EasyInversePlanningBlocksPDDLEnv(InversePlanningBlocksPDDLEnv):
    dir_path = InversePlanningBlocksPDDLEnv.dir_path
    problem_dir = os.path.join(dir_path, "easy-block-words")


# Oooooomph
def get_set_partition(collection):
    if len(collection) == 1:
        yield [ collection ]
        return

    first = collection[0]
    for smaller in get_set_partition(collection[1:]):
        # insert `first` in each of the subpartition's subsets
        for n, subset in enumerate(smaller):
            yield smaller[:n] + [[ first ] + subset]  + smaller[n+1:]
        # put `first` in its own subset 
        yield [ [ first ] ] + smaller

def get_all_partitions(collection):
    for set_partition in get_set_partition(collection):
        intra_set_orderings = [list(itertools.permutations(l)) for l in set_partition]
        for p in itertools.product(*intra_set_orderings):
            yield p

def sample_partition(collection, rng):
    partition = []
    current_list = []
    order = list(collection)
    num_items = len(order)
    rng.shuffle(order)
    for item in order:
        current_list.append(item)
        if rng.uniform() < 0.5:
            partition.append(current_list)
            current_list = []
    if len(current_list) > 0:
        partition.append(current_list)
    return partition


if __name__ == "__main__":
    import imageio
    import time
    # print(list(get_all_partitions([0, 1])))
    # print()
    # print(list(get_all_partitions([0, 1, 2])))
    # env = InversePlanningBlocksPDDLEnv()
    # env.reset()
    # for i, state in enumerate(env.get_all_states()):
    #     env.set_state(state)
    #     img = env.render()
    #     imageio.imsave('/tmp/debug{}.png'.format(i), img)    
    env = InversePlanningBlocksPDDLEnv()
    env.reset()
    start_time = time.time()
    sampled_states = [env.sample_state() for _ in range(100)]
    print("Sampling time: {}".format(time.time() - start_time))
    for i, state in enumerate(sampled_states):
        env.set_state(state)
        img = env.render()
        imageio.imsave('/tmp/sample{}.png'.format(i), img)    
