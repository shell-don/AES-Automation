#!/bin/sh
PATH=/usr/bin:/bin:/usr/sbin:/sbin:/dev:/Applications/KeePassXC.app/contents/macos
# un mdp ≈ 13 000 bit d'entropie

#######################
# Variable à modifier #
#######################

export PATH=$PATH:<chemin vers le dossier contenant aescrypt>

########
# code #
########

echo "Quel est le chemin du fichier ?"
read CHEMIN_FICHIER
CHEMIN_ORIGINE=$CHEMIN_FICHIER
echo "Combien de fois voulez-vous le chiffrer ?"
read n 

i=1
until [ $i -gt $n ]
  do
    # génère un mot de passe et le stock dans une matrice.
    x=$(keepassxc-cli generate -L 999 -e -c ѮѰѠѪѦѬѨ)
    TABLE[$i]="$x"
    # chiffre le fichier
    aescrypt -e -p $x $CHEMIN_FICHIER
    # supprime tout les anciens fichiers chiffré sauf le dernier.
    if [[ $i -le $n ]]
     then 
     rm $CHEMIN_FICHIER
    else
      echo "L'Output $i n'est pas supprimé"
    fi
    # change le nom du fichier chiffré pour le nom d'origine.
    mv ${CHEMIN_FICHIER}.aes $CHEMIN_ORIGINE
    # change le chemin utilisé pour le prochain chiffrement. 
    CHEMIN_FICHIER=$CHEMIN_ORIGINE
    echo "Chiffrement $i effectué"
    ((i++))
  done
