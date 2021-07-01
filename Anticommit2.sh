#!/bin/bash

diffDate(){
     diffDate=$((($(date -d "$2" +%s)-$(date -d "$1" +%s))/86400));
}

dateAuj=$(date +"%m/%d/%Y")
dateAn=$(date -d "1 year ago" "+%m/%d/%Y")

echo "Saisir la date du 1er commit au format mm/dd/yyyy, par defaut l'année dernière ${dateAn}"
read dateDebut
if [$dateDebut == ""]
then
    dateDebut=$dateAn
fi

echo "Saisir la date du dernier commit au format  mm/dd/yyyy, par defaut la date d'aujourd'hui ${dateAuj}"
read dateFin
if [$dateFin == ""]
then
    dateFin=$dateAuj
fi

echo "Commit seulement les jours de la semaine 'oui' ou 'non' par defaut 'oui'"
read commitWeek
if [$commitWeek == ""]
then
    commitWeek="oui"
fi

echo "Saisir le numbre de commit/jour minimum par defaut 1"
read nbCommitMin
if [$nbCommitMin = ""]
then
    nbCommitMin="1"
fi

echo "Saisir le numbre de commit/jour maximum"
read nbCommitMax
if [$nbCommitMax = ""]
then
    nbCommitMax="3"
fi



diffDate $dateDebut $dateFin
dateCommit=$dateDebut

for i in `seq 1 $diffDate`;
do
    for i in `seq 1 $diffDate`;
    do
        ran=$(($RANDOM * 100 / 32767))
        echo $ran 
    done

    

    #echo ${i}." "${dateCommit}
    #dateCommit=$(date -d"$dateCommit CDT +24 hours" +"%m-%d-%Y %H:%M:%S")

done

