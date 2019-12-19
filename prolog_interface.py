import subprocess
import tempfile


class PrologInterface:
    """
    """
    def __init__(self, kb, conds, max_assignment_count=2):
        self._kb = kb
        self._conds = conds
        self._max_assignment_count = max_assignment_count
        self._check_format()
        self._varnames_to_var = self._create_varname_to_var(self._conds, lower=True)
        self._atomname_to_atom = self._create_varname_to_var(self._kb)
        self._prolog_str = self._create_prolog_str()

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

    @staticmethod
    def _create_varname_to_var(lits, lower=False):
        """
        """
        vname_to_v = {}
        for lit in lits:
            for v in lit.variables:
                vname = v.name
                if lower:
                    vname = vname.lower()
                if vname in vname_to_v:
                    assert vname_to_v[vname] == v
                else:
                    vname_to_v[vname] = v
        return vname_to_v

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

    def _parse_output_line(self, output_line):
        """
        """
        return output_line[1:-1].split(',')

    def run(self):
        """
        """
        file = tempfile.NamedTemporaryFile(suffix=".pl")
        tmp_name = file.name
        with open(tmp_name, 'w') as f:
            f.write(self._prolog_str)
        cmd_str = "swipl {}".format(tmp_name)
        output = subprocess.getoutput(cmd_str)
        lines = output.split('\n')
        varnames = self._parse_output_line(lines.pop(0))
        vs = [self._varnames_to_var[v] for v in varnames]
        bindings = lines
        if len(bindings) == 0:
            return []
        assignments = []
        for binding in bindings:
            atomnames = self._parse_output_line(binding)
            # Recover original (typed) atoms
            atoms = [self._atomname_to_atom[v] for v in atomnames]
            assignment = dict(zip(vs, atoms))
            assignments.append(assignment)
        return assignments


