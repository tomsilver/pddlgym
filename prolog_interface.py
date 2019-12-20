import subprocess
import sys
import tempfile


class PrologInterface:
    """
    """
    def __init__(self, kb, conds, max_assignment_count=2, timeout=2, 
                 allow_redundant_variables=True):
        self._kb = kb
        self._conds = conds
        self._max_assignment_count = max_assignment_count
        self._allow_redundant_variables = allow_redundant_variables
        self._timeout = timeout
        self._varnames_to_var = self._create_varname_to_var(self._conds, 
            lambda x : self._clean_variable_name(x.lower()))
        self._atomname_to_atom = self._create_varname_to_var(self._kb, self._clean_atom_name)
        self._prolog_str = self._create_prolog_str()

    @classmethod
    def _clean_atom_name(cls, atom_name):
        return atom_name.lower().replace("-", "_")

    @classmethod
    def _clean_variable_name(cls, var_name):
        return var_name.replace("-", "_").replace("?", "")

    @classmethod
    def _clean_predicate_name(cls, predicate_name):
        return predicate_name.lower().replace("-", "_")

    @staticmethod
    def _create_varname_to_var(lits, transformer):
        """
        """
        vname_to_v = {}
        for lit in lits:
            for v in lit.variables:
                vname = transformer(v.name)
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
        goal_str, variables = self._prolog_goal(self._conds, self._allow_redundant_variables)
        end = self._prolog_end(variables, self._max_assignment_count)
        return '\n'.join([preamble, kb_str, type_str, goal_str, end])

    @classmethod
    def _prolog_kb_str(cls, kb):
        """
        """
        kb_str = ""
        for lit in sorted(kb):
            pred_name = cls._clean_predicate_name(lit.predicate.name)
            atoms = ",".join([cls._clean_atom_name(a) for a in lit.variables])
            kb_str += "\n{}({}).".format(pred_name, atoms)
        return kb_str

    @classmethod
    def _prolog_type_str(cls, kb):
        """
        """
        all_atoms = sorted({ v for lit in kb for v in lit.variables })
        type_str = ""
        for v in sorted(all_atoms, key=lambda v:v.var_type):
            vname = cls._clean_atom_name(v.name)
            type_str += "\nistype{}({}).".format(v.var_type, vname)
        return type_str

    @classmethod
    def _prolog_goal(cls, conds, allow_redundant_variables):
        """
        """
        all_vars = sorted({ v for lit in conds for v in lit.variables })
        all_vars_cleaned = [cls._clean_variable_name(v) for v in all_vars]
        main_cond_str = ""
        for lit in sorted(conds):
            pred_name = cls._clean_predicate_name(lit.predicate.name)
            if lit.is_negative:
                pred_name = "\\+"+pred_name
            variables = ",".join([cls._clean_variable_name(a.name) for a in lit.variables])
            main_cond_str += "\n\t{}({}),".format(pred_name, variables)
        type_cond_str = ""
        for v in sorted(all_vars, key=lambda v:v.var_type):
            type_cond_str += "\n\tistype{}({}),".format(v.var_type, cls._clean_variable_name(v.name))
        if not allow_redundant_variables:
            all_different_str = "\n\tall_different([{}]).".format(",".join(all_vars_cleaned))
        else:
            type_cond_str = type_cond_str[:-1]
            all_different_str = "."
        head_str = "\ngoal({}) :-".format(",".join(all_vars_cleaned))
        final_str = head_str + main_cond_str + type_cond_str + all_different_str
        return final_str, all_vars

    @classmethod
    def _prolog_preamble(cls, conds):
        pred_definitions = ""
        preds = sorted({ lit.predicate for lit in conds })
        for pred in preds:
            pred_name = cls._clean_predicate_name(pred.name)
            pred_definitions += "\n:- multifile({}/{}).".format(pred_name, pred.arity)

        return """print_solutions([]).
print_solutions([H|T]) :- write(H), nl, print_solutions(T).

{}
""".format(pred_definitions)
    
    @classmethod
    def _prolog_end(cls, variables, max_assignment_count):
        lowercase_vars = ",".join([cls._clean_variable_name(v.lower()) for v in variables])
        uppercase_vars = ",".join([cls._clean_variable_name(v.capitalize()) for v in variables])
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
        timeout_str = "gtimeout" if sys.platform == 'darwin' else "timeout"
        cmd_str = "{} {} swipl {}".format(timeout_str, self._timeout, tmp_name)
        output = subprocess.getoutput(cmd_str)
        if "ERROR" in output:
            import ipdb; ipdb.set_trace()
            raise Exception("Prolog terminated with an error: \n{}".format(output))
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
