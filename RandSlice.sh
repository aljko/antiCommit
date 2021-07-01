#!/bin/bash

echo "Saisir le numbre de commit/jour minimum par defaut 1"
read nbCommitMin
if test -z "$nbCommitMin"
then
    nbCommitMin="1"
fi

echo "Saisir le numbre de commit/jour maximum par defaut 3"
read nbCommitMax
if test -z "$nbCommitMax"
then
    nbCommitMax="3"
fi

echo "Nombre min ${nbCommitMin}"
echo "Nombre max ${nbCommitMax}"

for i in `seq 1 10`;
do
    rand=$(shuf -i ${nbCommitMin}-${nbCommitMax} -n 1)
    echo $rand
done