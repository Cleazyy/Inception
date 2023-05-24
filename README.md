# Inception
Docker images with services such as MariaDB, Nginx, WordPres made for 42.

### Docker commands :
- docker pull
- docker run
- docker start
- docker stop
- docker logs
- docker images
- docker ps
- docker stats
- docker rm
- docker rmi

### Docker Compose :
1. image : Spécifie l'image Docker à utiliser pour le conteneur.
2. build : Permet de construire une image personnalisée à partir d'un Dockerfile local.
3. ports : Définit le mappage des ports entre le conteneur et l'hôte.
4. volumes : Montre des volumes pour partager des données entre le conteneur et l'hôte ou entre différents conteneurs.
5. environment : Définit les variables d'environnement à utiliser dans le conteneur.
6. networks : Spécifie les réseaux auxquels le conteneur doit être connecté.
7. depends_on : Définit les dépendances entre les services, permettant de contrôler l'ordre de démarrage des conteneurs.
8. command : Spécifie la commande à exécuter dans le conteneur au démarrage.
9. restart : Définit la politique de redémarrage du conteneur en cas d'échec ou d'arrêt.
10. links : Permet de lier le conteneur à d'autres conteneurs en utilisant leurs noms.
11. expose : Expose des ports du conteneur à d'autres conteneurs, mais pas à l'hôte.
12. logging : Configure les options de journalisation pour le conteneur.
13. healthcheck : Définit une commande personnalisée pour vérifier l'état de santé du conteneur.
14. deploy : Utilisé pour configurer des options de déploiement spécifiques lorsque vous utilisez Docker Swarm.
15. secrets : Permet de spécifier des secrets qui seront utilisés dans le conteneur.

