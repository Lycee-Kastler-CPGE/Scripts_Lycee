#/!bin/bash

echo "Ne pas oublier de lancer le script en tant que root, ou avec sudo."
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
apt install -y wget htop rxvt-unicode console-data

# Langages de programmation et outils associés
echo "Installation des langages de programmation et de quelques outils qui y sont liés"
apt install -y ocaml opam menhir ragel gcc python-is-python3 python3-pip python-dev-is-python3 build-essential gfortran gprolog

# Outils de débugage
echo "Installation des outils de débuggage"
apt install -y valgrind gdb 

# Outils de gestion de version
echo "Installation des outils de gestion de version"
apt install -y git subversion gitk git-gui
