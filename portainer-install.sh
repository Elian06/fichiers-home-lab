#!/bin/bash

sudo docker volume create portanier_data

#read -p "Entrez le port de votre choix et appuyez sur Entrée : " port9553

#if [ -z "$port" ]; then
#       port9553=9553
#fi 

sudo docker run -d -p 8000:8000 -p 9000:9000 -p 9543:9543 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest 

# Récupérer l'adresse IP de la machine virtuelle
#adresse_ip=$(ip a | grep -oP 'inet (?!172\.0\.0\.1)[\d.]+')

# Si vous avez plusieurs interfaces réseau et que vous voulez récupérer ladresse IP d'une interface spécifique,
# vous pouvez ajuster la commande. Par exemple, pour l'interface eth0 :
# adresse_ip=$(ifconfig eth0 | grep -oP 'inet [\d.]+)

# Vérifier si l'adresse IP est récupérée avec succès
#if [ -z "$adresse_ip" ]; then
  #echo "Impossible de récupérer l'adresse IP. Assurez-vous que la machine virtuelle est en cours d'exécution."
  #exit 1
#fi

# Construire lURL à partir de l'adresse IP
#url="http://$adresse_ip"

# Ouvrir la page dans Google Chrome
#google-chrome