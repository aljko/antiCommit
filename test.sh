#!/bin/bash

echo "Saisir le numbre de commit/jour minimum par defaut 1"
read nbCommitMin
if test -z "$nbCommitMin"
then
    nbCommitMin="1"
fi

echo $nbCommitMin