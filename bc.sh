#!/bin/bash
#!/bin/zsh 

echo "Quel est le chemin du fichier ?" 
read path
echo "Combien de fois voulez-vous le chiffrer ?"
read n 

i=1
until [ $i -gt $n ]
  do 
    aescrypt -e $path 
    [[ $i -le $n ]] && rm $path || echo "L'Output $i n'est pas supprimé"
    path=${path}.aes
    echo "Chiffrement $i effectué"  
    ((i++))
  done
