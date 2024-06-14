#!/bin/sh 

########
# code #
########

echo "Quel est le chemin du fichier ?" 
read CHEMIN_FICHIER2
CHEMIN_ORIGINE2=$CHEMIN_FICHIER2
echo "Combien de fois voulez-vous le déchiffrer ?"
read n2

q=$n2
i2=1
until [ $i2 -gt $n2 ]
  do
    # Ajoute .aes au nom du fichier
    mv $CHEMIN_FICHIER2 ${CHEMIN_FICHIER2}.aes
    # récupère le mot de passe et déchiffre.
    PASSWORD=${TABLE[$q]}
    aescrypt -d -p $PASSWORD ${CHEMIN_FICHIER2}.aes
    # supprime l'ancien chiffrement
    rm ${CHEMIN_FICHIER2}.aes
    echo "Déchiffrement $i2 effectué"
    ((q--))
    ((i2++))
  done

