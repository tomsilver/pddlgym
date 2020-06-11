"""Python classes for common PDDL structures"""
from collections import namedtuple
import itertools
import numpy as np


### PDDL Types, Objects, Variables ###
class Type(str):
    """A PDDL type"""
    def __call__(self, entity_name):
        return TypedEntity.__new__(TypedEntity, entity_name, self)

# Default type
NULLTYPE = Type("null")


class TypedEntity(str):
    """All objects and variables from PDDL are TypedEntitys"""
    def __new__(cls, name, var_type):
        assert isinstance(var_type, Type)
        obj = str.__new__(cls, name)
        obj.name = name
        obj.var_type = var_type
        obj._str = str(obj.name) + ":" + str(obj.var_type)
        return obj

    def __str__(self):
        return self._str

    def __repr__(self):
        return str(self)

    def __hash__(self):
        return hash(str(self))

    def __add__(self, other):
        return str(self) + str(other)

    def __radd__(self, other):
        return str(other) + str(self)

    def __copy__(self):
        return self

    def __deepcopy__(self, memo):
        return self

    def __getnewargs_ex__(self):
        return ((self.name, self.var_type), {})

### Predicates ###
class Predicate(object):
    """
    A Predicate is a factory for Literals.

    Parameters
    ----------
    name : str
    arity : int
        The number of variables in the predicate.
    var_types : [ Type ]
        The Type of each variable in the predicate.
    is_negative : bool
        Whether this Predicate is negative (as in a
        negative precondition).
    is_anti : bool
        Whether this Predicate is anti (as in a 
        negative effect).
    """
    def __init__(self, name, arity, var_types=None, is_negative=False, is_anti=False,
                 negated_as_failure=False):
        self.name = name
        self.arity = arity
        self.var_types = var_types
        self.is_negative = is_negative
        self.negated_as_failure = negated_as_failure
        self.is_anti = is_anti

    def __call__(self, *variables):
        return Literal(self, list(variables))

    def __str__(self):
        if self.negated_as_failure:
            neg_prefix = '~'
        elif self.is_negative:
            neg_prefix = "Not"
        elif self.is_anti:
            neg_prefix = "Anti"
        else:
            neg_prefix = ""
        return neg_prefix + self.name

    def __repr__(self):
        return str(self)

    def __hash__(self):
        return hash(str(self))

    def __eq__(self, other):
        return str(self) == str(other)

    def __lt__(self, other):
        return str(self) < str(other)

    def __gt__(self, other):
        return str(self) > str(other)

    @property
    def positive(self):
        return self.__class__(self.name, self.arity, self.var_types,
            is_anti=self.is_anti)

    @property
    def negative(self):
        return self.__class__(self.name, self.arity, self.var_types, is_negative=True,
            is_anti=self.is_anti)

    @property
    def inverted_anti(self):
        assert not self.is_negative
        return self.__class__(self.name, self.arity, self.var_types, is_anti=(not self.is_anti))

    def negate_as_failure(self):
        assert not self.negated_as_failure
        return Predicate(self.name, self.arity, self.var_types, 
            negated_as_failure=True, is_anti=self.is_anti)

    def pddl_variables(self):
        variables = []
        for i, vt in enumerate(self.var_types):
            v = "?v{} - {}".format(i, vt)
            variables.append(v)
        return variables

    def pddl_str(self):
        if self.is_anti:
            return "(not ({} {}))".format(self.inverted_anti, " ".join(
                self.pddl_variables()))
        if self.is_negative:
            return "(not ({} {}))".format(self.positive, " ".join(
                self.pddl_variables()))
        if self.negated_as_failure:
            raise NotImplementedError
        return "({} {})".format(self, " ".join(self.pddl_variables()))

### Literals ###
class Literal:
    """A literal is a relation between objects or variables.

    Both lifted literals (ones with variables) and ground
    literals (ones with objects) are Literals in this code.

    Parameters
    ----------
    predicate : Predicate
    variables : [ TypedEntity or str ]
    """
    def __init__(self, predicate, variables):
        self.predicate = predicate
        self.variables = variables
        self.is_negative = predicate.is_negative
        self.is_anti = predicate.is_anti
        self.negated_as_failure = predicate.negated_as_failure

        # Apply types to untyped objects
        if self.predicate.var_types is not None:
            for i, (expected_type, var) in enumerate(zip(self.predicate.var_types, self.variables)):
                if not hasattr(var, 'var_type'):
                    # Convert strings
                    self.variables[i] = expected_type(var)

        # Cache str for repr
        self._str = str(self.predicate) + '(' + ','.join(map(str, self.variables)) + ')'
        self._hash = hash(self._str)

    def set_variables(self, variables):
        self.variables = variables
        self._update_variable_caches()

    def update_variable(self, var_idx, new_value):
        self.variables[var_idx] = new_value
        self._update_variable_caches()

    def _update_variable_caches(self):
        # Recompute cache
        self._str = str(self.predicate) + '(' + ','.join(map(str, self.variables)) + ')'
        self._hash = hash(self._str)

    def __str__(self):
        return self._str

    def __repr__(self):
        return self._str

    def __hash__(self):
        return self._hash

    def __eq__(self, other):
        return repr(self) == repr(other)

    def __lt__(self, other):
        return repr(self) < repr(other)

    def __gt__(self, other):
        return repr(self) > repr(other)

    def holds(self, state):
        raise NotImplementedError("Goals can only be LiteralConjunctions")

    @property
    def positive(self):
        return self.__class__(self.predicate.positive, [v for v in self.variables])

    @property
    def negative(self):
        return self.__class__(self.predicate.negative, [v for v in self.variables])

    @property
    def inverted_anti(self):
        return self.__class__(self.predicate.inverted_anti, [v for v in self.variables])

    def negate_as_failure(self):
        if self.negated_as_failure:
            return self.positive
        naf_predicate = self.predicate.negate_as_failure()
        return naf_predicate(*self.variables)

    def pddl_variables(self):
        return [v.replace("(", "").replace(")", "").replace(",", "")
                for v in self.variables]

    def pddl_variables_typed(self):
        return [str(v).replace("(", "").replace(")", "").replace(",", "").replace(":", " - ")
                for v in self.variables]

    def pddl_str(self):
        if self.is_anti:
            return "(not ({} {}))".format(self.predicate.inverted_anti, " ".join(
                self.pddl_variables()))
        if self.is_negative:
            return "(not ({} {}))".format(self.predicate.positive, " ".join(
                self.pddl_variables()))
        if self.negated_as_failure:
            raise NotImplementedError
        return "({} {})".format(self.predicate, " ".join(self.pddl_variables()))


class LiteralConjunction:
    """A logical conjunction (AND) of Literals.

    Parameters
    ----------
    literals : [ Literal ]
    """
    def __init__(self, literals):
        self.literals = literals

    def pddl_variables(self):
        return set().union(*(lit.pddl_variables() for lit in self.literals))

    def pddl_variables_typed(self):
        return set().union(*(lit.pddl_variables_typed() for lit in self.literals))

    def pddl_str(self):
        return "(and\n\t{})".format("\n\t".join(
            lit.pddl_str() for lit in self.literals))

    def holds(self, state):
        for lit in self.literals:
            assert not lit.is_anti
            if lit in state and lit.is_negative:
                return False
            if lit not in state and not lit.is_negative:
                return False
        return True

    def __str__(self):
        return "AND{}".format(self.literals)

    def __repr__(self):
        return str(self)

    def __hash__(self):
        return hash(str(self))

    def __eq__(self, other):
        return str(self) == str(other)


class LiteralDisjunction:
    """A logical disjunction (OR) of Literals.

    Parameters
    ----------
    literals : [ Literal ]
    """
    def __init__(self, literals):
        self.literals = literals

    def pddl_variables(self):
        return set().union(*(lit.pddl_variables() for lit in self.literals))

    def pddl_variables_typed(self):
        return set().union(*(lit.pddl_variables_typed() for lit in self.literals))

    def pddl_str(self):
        return "(or\n\t{})".format("\n\t".join(
            lit.pddl_str() for lit in self.literals))

    def holds(self, state):
        raise NotImplementedError("Goals can only be LiteralConjunctions")

    def __str__(self):
        return "OR{}".format(self.literals)

    def __repr__(self):
        return str(self)

    def __hash__(self):
        return hash(str(self))

    def __eq__(self, other):
        return str(self) == str(other)


class ForAll:
    """Represents a ForAll over the given variable in the given literal.
    variable is a structs.TypedEntity.
    """
    def __init__(self, literal, variables):
        if isinstance(variables, str): 
            variables = [variables]

        self.literal = literal
        self.variables = variables

    def __str__(self):
        return "FORALL ({}) : {}".format(self.variables, self.literal)

    def __repr__(self):
        return str(self)

    def __hash__(self):
        return hash(str(self))

    def __eq__(self, other):
        return str(self) == str(other)

class Exists:
    """
    """
    def __init__(self, variables, literal):
        self.variables = variables
        self.body = literal

    def __str__(self):
        return "EXISTS ({}) : {}".format(self.variables, str(self.body))

    def __repr__(self):
        return str(self)

    def __hash__(self):
        return hash(str(self))

    def __eq__(self, other):
        return str(self) == str(other)

    def pddl_str(self):
        body_str = self.body.pddl_str()
        var_str = '\n'.join(['{} - {}'.format(v.name, v.var_type) for v in self.variables])
        return "(exists ({}) {})".format(var_str, body_str)


class ProbabilisticEffect:
    """Represents a probabilistic effect over a set of possibilities.
    """
    def __init__(self, literals, probabilities):
        self.literals = literals
        self.probabilities = probabilities
        assert sum(self.probabilities) <= 1.0
        self.literals.append("NOCHANGE")
        self.probabilities.append(1-sum(self.probabilities))

    def __str__(self):
        return "PROBABILISTIC{}".format(list(zip(self.literals, self.probabilities)))

    def __repr__(self):
        return str(self)

    def __hash__(self):
        return hash(str(self))

    def __eq__(self, other):
        return str(self) == str(other)

    def pddl_str(self):
        raise NotImplementedError("Can't PDDL-ify a probabilistic effect")

    def sample(self):
        return np.random.choice(self.literals, p=self.probabilities)

    def max(self):
        return self.literals[np.argmax(self.probabilities)]

### States ###

# A State is a frozenset of ground literals and a frozenset of objects
class State(namedtuple("State", ["literals", "objects", "goal"])):
    __slots__ = ()

    def with_literals(self, literals):
        """
        Return a new state that has the same objects and goal as the given one,
        but has the given set of literals instead of state.literals.
        """
        return self._replace(literals=frozenset(literals))

    def with_objects(self, objects):
        """
        Return a new state that has the same literals and goal as the given one,
        but has the given set of objects instead of state.objects.
        """
        return self._replace(objects=frozenset(objects))

    def with_goal(self, goal):
        """
        Return a new state that has the same literals and objects as the given
        one, but has the given goal instead of state.goal.
        """
        return self._replace(goal=goal)


### Helpers ###
def Not(x):  # pylint:disable=invalid-name
    """Negate a Predicate or Literal."""
    if isinstance(x, Predicate):
        return Predicate(x.name, x.arity, var_types=x.var_types, 
            is_negative=(not x.is_negative), is_anti=(x.is_anti))

    assert isinstance(x, Literal)
    new_predicate = Not(x.predicate)
    return new_predicate(*x.variables)

def Anti(x):  # pylint:disable=invalid-name
    """Invert a Predicate or Literal effect."""
    if isinstance(x, Predicate):
        return Predicate(x.name, x.arity, var_types=x.var_types, 
            is_anti=(not x.is_anti))

    assert isinstance(x, Literal)
    new_predicate = Anti(x.predicate)
    return new_predicate(*x.variables)

def Effect(x):  # pylint:disable=invalid-name
    """An effect predicate or literal.
    """
    assert not x.negated_as_failure
    if isinstance(x, Predicate):
        return Predicate("Effect"+x.name, x.arity, var_types=x.var_types,
            is_negative=x.is_negative, is_anti=x.is_anti)
    assert isinstance(x, Literal)
    new_predicate = Effect(x.predicate)
    return new_predicate(*x.variables)

def effect_to_literal(literal):
    assert isinstance(literal, Literal)
    assert literal.predicate.name.startswith("Effect")
    non_effect_pred = Predicate(literal.predicate.name[len("Effect"):], literal.predicate.arity,
        literal.predicate.var_types, negated_as_failure=literal.predicate.negated_as_failure,
        is_negative=literal.predicate.is_negative, is_anti=literal.predicate.is_anti)
    return non_effect_pred(*literal.variables)


def ground_literal(lifted_lit, assignments):
    """Given a lifted literal, create a ground
    literal with the assignments mapping vars to
    objects.

    Parameters
    ----------
    lifted_lit : Literal
    assignments : { TypedEntity : TypedEntity }
        Vars to objects.

    Returns
    -------
    ground_lit : Literal
    """
    ground_vars = []
    for v in lifted_lit.variables:
        arg = assignments[v]
        ground_vars.append(arg)
    return lifted_lit.predicate(*ground_vars)
