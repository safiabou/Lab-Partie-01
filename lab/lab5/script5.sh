#!/bin/sh
for fichiers in  cd '/home/safia/Documents/TP/lab4/5AS05-partie4'
do
   if [ -d $fichiers ]
   then
     ls $fichiers
     else
                echo "le chemin passé n'est pas un repertoire valide "

   fi
done
