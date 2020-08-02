#!/bin/bash
for i in {0..39}
do
   ./logistics -a 10 -c 10 -s 2 -p 20 > ../../pddl/manylogistics/problem$i.pddl
done

# for i in {40..49}
# do
#    ./logistics -a 50 -c 50 -s 2 -p 20 > ../../pddl/manylogistics_test/problem$i.pddl
# done
