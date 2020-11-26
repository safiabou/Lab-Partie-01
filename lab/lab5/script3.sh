#!/bin/sh
for files in /home/safia/Documents/TP/lab4/* # Parcourir tous les fichiers et repertoires de la partie 4
do
        if [ -d $files ]                # On verifie si on a bien un repertoire
        then
                ls $files               # Si oui, on liste tous les fichiers du repertoire 
        fi
done

