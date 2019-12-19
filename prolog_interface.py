class PrologInterface:
    """
    """
    def __init__(self, kb, conds, max_assignment_count=2):
        self._kb = kb
        self._conds = conds
        self._max_assignment_count = max_assignment_count
        self._check_format()
        self._prolog_str = self._create_prolog_str()
        print(self._prolog_str)
        import ipdb; ipdb.set_trace()

    def _check_format(self):
        """
        """
        # Make sure all atoms and literals are lowercase
        for lit in self._kb:
            assert not lit.is_negative, "Kb literals cannot be negative (closed world)"
            if not lit.predicate.name.islower():
                raise Exception("Predicate names must be lowercase for Prolog; {} is not.".format(lit.predicate.name))
            for atom in lit.variables:
                if not atom.islower():
                    raise Exception("Atoms must be lowercase for Prolog; {} is not.".format(atom))

        # Make sure all variables are capitalized
        for lit in self._conds:
            if not lit.predicate.name.islower():
                raise Exception("Predicate names must be lowercase for Prolog; {} is not.".format(lit.predicate.name))
            for variable in lit.variables:
                if variable.islower():
                    raise Exception("Variables must be capitalized for Prolog; {} is not.".format(variable))

    def _create_prolog_str(self):
        """
        """
        preamble = self._prolog_preamble(self._conds)
        type_str = self._prolog_type_str(self._kb)
        kb_str = self._prolog_kb_str(self._kb)
        goal_str, variables = self._prolog_goal(self._conds)
        end = self._prolog_end(variables, self._max_assignment_count)
        return '\n'.join([preamble, kb_str, type_str, goal_str, end])

    @staticmethod
    def _prolog_kb_str(kb):
        """
        """
        kb_str = ""
        for lit in sorted(kb):
            pred_name = lit.predicate.name
            atoms = ",".join([a.name for a in lit.variables])
            kb_str += "\n{}({}).".format(pred_name, atoms)
        return kb_str

    @staticmethod
    def _prolog_type_str(kb):
        """
        """
        all_atoms = sorted({ v for lit in kb for v in lit.variables })
        type_str = ""
        for v in sorted(all_atoms, key=lambda v:v.var_type):
            type_str += "\nistype{}({}).".format(v.var_type, v.name)
        return type_str

    @staticmethod
    def _prolog_goal(conds):
        """
        """
        all_vars = sorted({ v for lit in conds for v in lit.variables })
        main_cond_str = ""
        for lit in sorted(conds):
            pred_name = lit.predicate.name
            if lit.is_negative:
                pred_name = "\\+"+pred_name
            variables = ",".join([a.name for a in lit.variables])
            main_cond_str += "\n\t{}({}),".format(pred_name, variables)
        type_cond_str = ""
        for v in sorted(all_vars, key=lambda v:v.var_type):
            type_cond_str += "\n\tistype{}({}),".format(v.var_type, v.name)
        all_different_str = "\n\tall_different([{}]).".format(",".join(all_vars))
        head_str = "\ngoal({}) :-".format(",".join(all_vars))
        final_str = head_str + main_cond_str + type_cond_str + all_different_str
        return final_str, all_vars

    @staticmethod
    def _prolog_preamble(conds):
        pred_definitions = ""
        preds = sorted({ lit.predicate for lit in conds })
        for pred in preds:
            pred_definitions += "\n:- multifile({}/{}).".format(pred.name, pred.arity)

        return """print_solutions([]).
print_solutions([H|T]) :- write(H), nl, print_solutions(T).

{}
""".format(pred_definitions)
    
    @staticmethod
    def _prolog_end(variables, max_assignment_count):
        lowercase_vars = ",".join([v.lower() for v in variables])
        uppercase_vars = ",".join(variables)
        return """
:- use_module(library(bounds)).
:- initialization (
    write([{0}]),
    nl,
    findnsols({1}, [{2}], goal({3}), L),
    print_solutions(L), 
    halt).
""".format(lowercase_vars, max_assignment_count, uppercase_vars, uppercase_vars)

    def run(self):
        """
        """
        raise NotImplementedError()
