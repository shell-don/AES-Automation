#!/bin/sh

echo "Quel est le chemin du fichier ?" 
read path
echo "Combien de fois voulez-vous le déchiffrer ?"
read n 

i=1
until [ $i -gt $n ]
  do 
    aescrypt -d $path 
    [[ $i -le $n ]] && rm $path || echo "L'Output $i n'est pas supprimé"
    path=$(sed 's/.aes//' <<< $path)
    echo "Déchiffrement $i effectué"  
    ((i++))
  done

