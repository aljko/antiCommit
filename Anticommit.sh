#!/bin/sh

echo "Saisir la date du 1er commit au format '2020-04-21 19:59:59'"
read dateDebut
echo "Saisir le nombre de répétition'"
read repetition
echo "Saisir le nombre d'heure entre chaque commit"
read ecart
echo ""
dateCommit=$dateDebut
for i in `seq 1 $repetition`;
do
        echo ${i}.${dateCommit}
        dateCommit=$(date -d"$dateCommit CDT +24 hours" +"%Y-%m-%d %H:%M:%S")
done