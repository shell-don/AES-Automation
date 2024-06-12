```
      .o.       oooooooooooo  .oooooo..o                   .o.       
     .888.      `888'     `8 d8P'    `Y8                  .888.      
    .8"888.      888         Y88bo.                      .8"888.     
   .8' `888.     888oooo8     `"Y8888o.                 .8' `888.    
  .88ooo8888.    888    "         `"Y88b               .88ooo8888.   
 .8'     `888.   888       o oo     .d8P              .8'     `888.  
o88o     o8888o o888ooooood8 8""88888P'  ooooooooooo o88o     o8888o 
                                                                     
                                                                     
ooooooooooooo   .oooooo.   ooo        ooooo       .o.       ooooooooooooo 
8'   888   `8  d8P'  `Y8b  `88.       .888'      .888.      8'   888   `8 
     888      888      888  888b     d'888      .8"888.          888      
     888      888      888  8 Y88. .P  888     .8' `888.         888      
     888      888      888  8  `888'   888    .88ooo8888.        888      
     888      `88b    d88'  8    Y     888   .8'     `888.       888      
    o888o      `Y8bood8P'  o8o        o888o o88o     o8888o     o888o     
                                                                          
                                                                          
                                                                          
ooooo   .oooooo.   ooooo      ooo 
`888'  d8P'  `Y8b  `888b.     `8' 
 888  888      888  8 `88b.    8  
 888  888      888  8   `88b.  8  
 888  888      888  8     `88b.8  
 888  `88b    d88'  8       `888  
o888o  `Y8bood8P'  o8o        `8  
                                  
```

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
