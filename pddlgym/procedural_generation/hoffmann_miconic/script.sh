#!/bin/bash
for i in {0..39}
do
   ./miconic -f 250 -p 80 > ../../pddl/manymiconic/problem$i.pddl
done

for i in {40..49}
do
   ./miconic -f 250 -p 80 > ../../pddl/manymiconic_test/problem$i.pddl
done
