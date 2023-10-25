#/!bin/bash

echo "Ne pas oublier de lancer le script en tant que root, ou avec sudo."
## Partie I - APT
echo "Partie I : APT"
# On rend apt sans aucune interaction 
export DEBIAN_FRONTEND=noninteractive 

# Pour eviter les problemes de locale 
LANG=

# On commence par tout mettre à jour
apt update -y
apt upgrade -y

# Ensuite on installe par thème :

# Outils pour le terminal
echo "Installation des outils pour le terminal"
apt install -y wget htop rxvt-unicode console-data bash-completion plocate

# Langages de programmation et outils associés
echo "Installation des langages de programmation et de quelques outils qui y sont liés"
apt install -y ocaml opam menhir ragel gcc python-is-python3 python3-pip python-dev-is-python3 build-essential gfortran gprolog ml-yacc flex python3-pyqt5 sqlite3

# IDEs
echo "Installation des IDEs"
apt install -y emacs vim thonny gedit geany
apt install -y notepadqq

# Outils de débugage
echo "Installation des outils de débuggage"
apt install -y valgrind gdb 

# Outils de gestion de version
echo "Installation des outils de gestion de version"
apt install -y git subversion gitk git-gui

# Outils graphiques
echo "Installation des outils graphiques"
apt install -y gimp inkscape gnuplot graphviz

# Outils bureautiques
echo "Installation des logiciels de bureautique"
apt install -y libreoffice libreoffice-l10n-fr evince

# Documentation
echo "Installation des documentations"
apt install -y manpages manpages-dev manpages-fr manpages-fr-dev glibc-doc man-db zeal

## Partie II - SNAP
echo "Partie II : SNAP"

# PyCharm
echo "Installation de Pycharm"
snap install pycharm-community --classic

# VSCodium
echo "Installation de VSCodium"
snap install code --classic

# DB Browser
echo "Installation d'un browser pour SQLite"
snap install sqlitebrowser

## Partie III - Modules Python
echo "Installation des modules python"
echo "Attention pour que cela marche packages_python.txt doit être dans le répertoire depuis lequel on a lancé ce script !"
python3 -m pip install -r packages_python.txt --break-system-packages
pip freeze -r packages_python.txt > /etc/skel/packages_python.txt

echo "Installation terminée"
