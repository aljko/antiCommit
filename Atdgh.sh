echo "Saisir une date au format '2020-08-02 15:42:06'"
read dateDepart
for i in {0..8}
do
   NEXT_DATE=$(date +%Y-%m-%d %H:%M:%S" -d "$DATE + $i day")
   echo "$NEXT_DATE"
done

