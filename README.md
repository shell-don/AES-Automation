# AES_Automation
Outil en ligne de commande pour automatiser le chiffrement/déchiffrement de fichier en AES 256. Écrit en Bash. Fonctionne avec Zsh.

Utilité : Chiffrer autant de fois que l'on veut un fichier. Pourquoi faire simple quand on peut faire compliqué. (la combinaison avec KeepassXC est la bienvenue)

Prérequis :
  Aescrypt-console (Mac M1/M2 ou autre versions suivant le device cf : https://www.aescrypt.com/download/)
  Mettre le binaire aescrypt dans un dossier accessible par le shell.
  Puis copier les fichier bc.sh (chiffrement) et bcr.sh (déchiffrement) dans le même dossier en n'oubliant pas de les rendrent éxécutables. (chmod)

Optimisation possible avec un alias dans le fichier ~/.aliasrc :
  alias bc="bc.sh"
  alias bcr="bcr.sh"

Point utile, lors du chiffrement le dernier mot de passe utilisé devient le premier mot de passe lors du déchiffrement. 
