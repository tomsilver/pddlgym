from pddlgym.structs import Literal, LiteralConjunction, ForAll, Exists
from collections import defaultdict
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
            lambda x : self._clean_variable_name(x).lower())
        self._atomname_to_atom = self._create_varname_to_var(self._kb, self._clean_atom_name)
        self._type_to_atomnames = defaultdict(list)
        for atom_name, atom in self._atomname_to_atom.items():
            self._type_to_atomnames[atom.var_type].append(atom_name)
        self._prolog_str = self._create_prolog_str()
        # print(self._prolog_str)
        # import ipdb; ipdb.set_trace()

    @classmethod
    def _clean_atom_name(cls, atom_name):
        return atom_name.lower().replace("-", "_")

    @classmethod
    def _clean_variable_name(cls, var_name):
        return var_name.replace("-", "_").replace("?", "").capitalize()

    @classmethod
    def _clean_predicate_name(cls, predicate_name):
        return "pred"+predicate_name.lower().replace("-", "_")

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

    def _prolog_goal(self, conds, allow_redundant_variables):
        """
        """
        all_vars = sorted({ v for lit in conds if isinstance(lit, Literal) for v in lit.variables })
        all_vars_cleaned = [self._clean_variable_name(v) for v in all_vars]
        main_cond_str = ""
        for lit in conds:
            pred_str = "\n\t" + self._prolog_goal_line(lit) + ","
            main_cond_str += pred_str
        type_cond_str = ""
        for v in sorted(all_vars, key=lambda v:v.var_type):
            type_cond_str += "\n\tistype{}({}),".format(v.var_type, self._clean_variable_name(v.name))
        if not allow_redundant_variables:
            all_different_str = "\n\tall_different([{}]).".format(",".join(all_vars_cleaned))
        else:
            type_cond_str = type_cond_str[:-1]
            all_different_str = "."
        head_str = "\ngoal({}) :-".format(",".join(all_vars_cleaned))
        final_str = head_str + main_cond_str + type_cond_str + all_different_str
        return final_str, all_vars

    def _prolog_goal_line(self, lit):
        """
        """
        if lit.is_negative:
            pos_pred_str = self._prolog_goal_line(lit.positive)
            pred_str = "dif(true, {})".format(pos_pred_str)
            return pred_str
        if isinstance(lit, Literal):
            pred_name = self._clean_predicate_name(lit.predicate.name)
            variables = ",".join([self._clean_variable_name(a.name) for a in lit.variables])
            pred_str = "{}({})".format(pred_name, variables)
            return pred_str
        if isinstance(lit, ForAll):
            variables = ",".join([self._clean_variable_name(a.name) for a in lit.variables])
            assert len(variables) == 1, "TODO: support ForAlls over multiple variables"
            variable = variables[0]
            var_type = lit.variables[0].var_type
            objects_of_type = self._type_to_atomnames[var_type]
            objects_str = "[" + ",".join(objects_of_type) + "]"
            pred_str_body = self._prolog_goal_line(lit.literal)
            pred_str = "forall(member({}, {}), {})".format(variable, objects_str, pred_str_body)
            return pred_str
        if isinstance(lit, Exists):
            variables = ",".join([self._clean_variable_name(a.name) for a in lit.variables])
            assert len(variables) == 1, "TODO: support Exists over multiple variables"
            variable = variables[0]
            var_type = lit.variables[0].var_type
            objects_of_type = self._type_to_atomnames[var_type]
            objects_str = "[" + ",".join(objects_of_type) + "]"
            pred_str_body = self._prolog_goal_line(lit.body)
            pred_str = "exists(member({}, {}), {})".format(variable, objects_str, pred_str_body)
            return pred_str
        raise NotImplementedError()

    @classmethod
    def _prolog_preamble(cls, conds):
        pred_definitions = ""
        preds = set()
        for lit in conds:
            preds.update(cls._get_predicates_from_literal(lit))
        preds = sorted(preds)
        for pred in preds:
            pred_name = cls._clean_predicate_name(pred.name)
            pred_definitions += "\n:- multifile({}/{}).".format(pred_name, pred.arity)

        return """print_solutions([]).
print_solutions([H|T]) :- write(H), nl, print_solutions(T).
{}
""".format(pred_definitions)

    @classmethod
    def _get_predicates_from_literal(cls, lit):
        if isinstance(lit, Literal):
            return { lit.predicate }
        if isinstance(lit, LiteralConjunction):
            return { p for l in lit.literals for p in cls._get_predicates_from_literal(l) }
        if isinstance(lit, ForAll):
            return cls._get_predicates_from_literal(lit.literal)
        if isinstance(lit, Exists):
            return cls._get_predicates_from_literal(lit.body)
        raise NotImplementedError()
    
    @classmethod
    def _prolog_end(cls, variables, max_assignment_count):
        lowercase_vars = ",".join([cls._clean_variable_name(v).lower() for v in variables])
        uppercase_vars = ",".join([cls._clean_variable_name(v).capitalize() for v in variables])
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
        if "ERROR" in output or "Warning" in output:
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
