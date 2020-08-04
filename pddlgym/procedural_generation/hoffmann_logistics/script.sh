#!/bin/bash
for i in {0..39}
do
    let "AIRS=2+($RANDOM%5)"
    let "CARS=2+($RANDOM%5)"
    let "CITY=1+($RANDOM%3)"
    let "PACKS=1+($RANDOM%8)"
   ./logistics -a $AIRS -c $CARS -s $CITY -p $PACKS > ../../pddl/manylogistics/problem$i.pddl
   echo "Generated logistics problem with $AIRS airplanes, $CARS cars, $CITY size cities, $PACKS packages."
done

# for i in {40..49}
# do
#    ./logistics -a 50 -c 50 -s 2 -p 20 > ../../pddl/manylogistics_test/problem$i.pddl
# done
