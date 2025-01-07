#!/bin/bash

# Définir le chemin vers les dossiers web et web/API
WEB_DIR="site"
phpMyAdmin_DIR="../../usr/src/phpmyadmin"
SQL_FILE_ENV="database/sources-sql/init-BDD.sql"
SQL_FILE_BDD="database/sources-sql/oceane.sql"

# Créer le répertoire /run/mysqld si nécessaire et définir les permissions
if [ ! -d /run/mysqld ]; then
    echo "Création du répertoire /run/mysqld..."
    sudo mkdir -p /run/mysqld
    sudo chown mysql:mysql /run/mysqld
fi

# Démarrer le service MariaDB
echo "Démarrage du service MariaDB..."
sudo service mariadb start

# Créer la base de données à partir du fichier SQL
echo "Création de la base de données à partir de $SQL_FILE_ENV..."
sudo mysql -u root < $SQL_FILE_ENV

# Peupler la base de données à partir du fichier SQL
echo "Peuplement de la BDD à partir de $SQL_FILE_BDD..."
sudo mysql -u root < $SQL_FILE_BDD

# Démarrage du serveur PHP pour le dossier web
echo "Démarrage du serveur PHP sur http://0.0.0.0:8000 depuis $WEB_DIR"
php -S 0.0.0.0:8000 -t $WEB_DIR &

# Démarrage du serveur PHP pour phpMyAdmin
echo "Démarrage du serveur PHP pour phpMyAdmin sur http://0.0.0.0:8080"
php -S 0.0.0.0:8080 -t $phpMyAdmin_DIR &