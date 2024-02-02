#!/bin/bash

# Ce fichier est dédié à l'installation de Docker sur ubuntu server

#Mise à jour du cache 
sudo apt update && apt upgrade -y

#Ajout des dépendances Docker
sudo apt install apt-transport-https
sudo apt install ca-certificates
sudo apt install gnupg2
sudo apt install software-properties-common

#Ajout du dépôt officiel de Docker et récupération de la clé GPG
sudo wget https://download.docker.com/linux/debian/gpg
sudo gpg -dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#Ajout de la liste des sources Docker
sudo echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg]
https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo tee /etc/apt/sources.list.d/docker.list

#Mise à jourdes paquets contenant Docker
sudo apt update

#Installation de Docker
sudo apt install docker.io

#Activation et vérification
sudo systemctl enable docker
sudo systemctl status docker

