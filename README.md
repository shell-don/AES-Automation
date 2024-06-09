# AES_Automation
Outil en ligne de commande pour automatiser le chiffrement/déchiffrement de fichier en AES 256. Écrit en Bash. Fonctionne avec Zsh.

Utilité : 

Chiffrer autant de fois que l'on veut un fichier. Pourquoi faire simple quand on peut faire compliqué.

Prérequis :
  
  Aescrypt-console (Mac M1/M2 ou autre versions suivant le device)
  
Optimisation possible avec un alias dans le fichier ~/.aliasrc :

  alias bc="bc.sh"
  alias bcr="bcr.sh"

Point utile, lors du chiffrement le dernier mot de passe utilisé devient le premier mot de passe lors du déchiffrement. 
