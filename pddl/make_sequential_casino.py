import os

NUM_SQUARES = 5

dom_str = ""
dom_str += "(define (domain sequentialcasino)\n"
dom_str += "  (:requirements :strips :typing)\n"
dom_str += "  (:types location direction {})\n".format(" ".join(
    "prize{}".format(i+1) for i in range(NUM_SQUARES)))
dom_str += "  (:predicates\n"
dom_str += "    (RobotAt ?loc - location)\n    (DirHolds ?sloc - location ?eloc - location ?dir - direction)\n    (Move ?dir - direction)\n"
for i in range(NUM_SQUARES):
    dom_str += "    (GetPrize{0} ?prize - prize{0})\n".format(i+1)
    dom_str += "    (HoldingPrize{0} ?prize - prize{0})\n".format(i+1)
    dom_str += "    (LocPrize{0} ?prize - prize{0} ?loc - location)\n".format(i+1)
dom_str += "  )\n\n  ; (:actions Move {})\n".format(" ".join(
    "GetPrize{}".format(i+1) for i in range(NUM_SQUARES)))
dom_str += "\n  (:action MoveTo\n    :parameters (?sloc - location ?eloc - location ?dir - direction)\n    :precondition (and (Move ?dir) (DirHolds ?sloc ?eloc ?dir) (RobotAt ?sloc))\n    :effect (and (not (RobotAt ?sloc)) (RobotAt ?eloc))\n  )\n"
for i in range(NUM_SQUARES):
    dom_str += "\n  (:action GetPrize{0}\n    :parameters (?prize - prize{0} ?loc - location)\n    :precondition (and (GetPrize{0} ?prize) (LocPrize{0} ?prize ?loc) (RobotAt ?loc))\n    :effect (and (HoldingPrize{0} ?prize))\n  )\n".format(i+1)
dom_str += ")\n\n\n\n"
with open("sequentialcasino.pddl", "w") as f:
    f.write(dom_str)

prob_str = ""
prob_str += "(define (problem sequentialcasino1)\n  (:domain sequentialcasino)\n"
prob_str += "\n  (:objects\n"
for i in range(NUM_SQUARES):
    prob_str += "    myprize{0} - prize{0}\n".format(i+1)
    prob_str += "    square{} - location\n".format(i+1)
prob_str += "    right - direction\n"
prob_str += "    left - direction\n"
prob_str += "    start - location\n"
prob_str += "  )\n\n  (:init\n"
prob_str += "    (RobotAt start)\n"
prob_str += "    (Move right)\n"
prob_str += "    (Move left)\n"
for i in range(NUM_SQUARES):
    prob_str += "    (LocPrize{0} myprize{0} square{0})\n".format(i+1)
    prob_str += "    (GetPrize{0} myprize{0})\n".format(i+1)
    if i == 0:
        prob_str += "    (DirHolds start square{} right)\n".format(i+1)
        prob_str += "    (DirHolds square{} start left)\n".format(i+1)
    else:
        prob_str += "    (DirHolds square{} square{} right)\n".format(i, i+1)
        prob_str += "    (DirHolds square{} square{} left)\n".format(i+1, i)
prob_str += "  )\n\n  (:goal (HoldingPrize{0} myprize{0}))\n)\n".format(NUM_SQUARES)
if not os.path.exists("sequentialcasino/"):
    os.mkdir("sequentialcasino/")
if not os.path.exists("sequentialcasino_test/"):
    os.mkdir("sequentialcasino_test/")
with open("sequentialcasino/problem1.pddl", "w") as f:
    f.write(prob_str)
with open("sequentialcasino_test/test_problem1.pddl", "w") as f:
    f.write(prob_str)
