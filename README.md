# AES_Automation
AES_automation permet de chiffrer et déchiffrer n fois un fichier en AES-256 de manière simple et intéractive en local.

## Installation

Installez [Aescrypt](https://www.aescrypt.com/download/) en mode console pour votre machine. 

Ajoutez le chemin du binaire aescrypt au path.
```bash
export PATH="$PATH:chemin"
```
Enfin copiez les fichiers bc.sh et bcr.sh au même endroit et rendez-les éxécutables.
```bash
chmod +x bc.sh ; chmod +x bcr.sh
```
### Optimisations
Ajoutez deux alias dans ~/.aliasrc
```zsh
alias bc="bc.sh"
alias bcr="bcr.sh"
```

## Usage
Lancer le chiffrement d'un fichier
```bash
bc
```
Lancer le déchiffrement d'un fichier
```
bcr
```
## Coming Soon

Automatisation complète du processus de chiffrement/déchiffrement
