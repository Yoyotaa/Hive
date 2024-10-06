#!/bin/bash

CONTAINER_NAME=payment-container
IMAGE_NAME=payment-image

build() {
    echo "==> Construction de l'image Docker..."
    docker build -f /home/azure/Documents/Code/Hive/frontend/backend/services/payment/Dockerfile -t $IMAGE_NAME /home/azure/Documents/Code/Hive/frontend/backend/services/payment
    echo "==> Image construite avec succès."
}

run() {
    echo "==> Exécution du conteneur Docker..."
    docker run -d -p 3002:3002 --name $CONTAINER_NAME $IMAGE_NAME
    echo "==> Conteneur démarré."
}

logs() {
    echo "==> Affichage des logs du conteneur Docker..."
    docker logs -f $CONTAINER_NAME
}

stop() {
    echo "==> Arrêt du conteneur Docker..."
    docker stop $CONTAINER_NAME
    echo "==> Conteneur arrêté."
}

start() {
    echo "==> Lancement du conteneur Docker..."
    docker start $CONTAINER_NAME
    echo "==> Conteneur lancé."
}

remove() {
    echo "==> Suppression du conteneur Docker..."
    docker rm $CONTAINER_NAME
    echo "==> Conteneur supprimé."
}

restart() {
    echo "==> Redémarrage du conteneur Docker..."
    stop
    remove
    run
    echo "==> Conteneur redémarré."

rebuild() {
    echo "==> Reconstruction de l'image Docker..."
    stop
    remove
    build
    echo "==> Image reconstruite avec succès."
}

help() {
    echo "Utilisation : $0 {build|run|logs|stop|remove|restart|rebuild}"
}

case "$1" in
    build)
        build
        ;;
    run)
        run
        ;;
    logs)
        logs
        ;;
    stop)
        stop
        ;;
    remove)
        remove
        ;;
    restart)
        restart
        ;;
    rebuild)
        rebuild
        ;;
    *)
        help
        ;;
esac
