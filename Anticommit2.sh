#!/bin/bash

diffDate(){
     diffDate=$((($(date -d "$2" +%s)-$(date -d "$1" +%s))/86400));
}

dateAuj=$(date +"%m/%d/%Y")
dateWeek=$(date -d "1 week ago" "+%m/%d/%Y")

echo "Saisir la date du 1er commit au format mm/dd/yyyy, par defaut la semaine dernière ${dateAn}"
read dateDebut
if test -z "$dateDebut"
then
    dateDebut=$dateWeek
fi

echo "Saisir la date du dernier commit au format  mm/dd/yyyy, par defaut la date d'aujourd'hui ${dateAuj}"
read dateFin
if test -z "$dateFin"
then
    dateFin=$dateAuj
fi

echo "Commit seulement les jours de la semaine 'oui' ou 'non' par defaut 'oui'"
read commitWeek
if test -z "$commitWeek"
then
    commitWeek="oui"
fi

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

echo "Jour su premier commit : ${dateDebut}"
echo "Jour du dernier commit : ${dateFin}"
echo "Commit seulement jours de la semaine : ${commitWeek}"
echo "Nombre min ${nbCommitMin}"
echo "Nombre max ${nbCommitMax}"
diffDate $dateDebut $dateFin
echo "Nombre de jours commités ${diffDate}"
echo ""

dateProchainCommit=$dateDebut

for i in `seq 1 ${diffDate}`;
do
    rand=$(shuf -i ${nbCommitMin}-${nbCommitMax} -n 1)

    for j in `seq 1 ${rand}`;
    do
        echo "${dateProchainCommit} ${j}"
    done

dateProchainCommit=$(date +%m-%d-%Y -d "$dateDebut + $i day")

done