# projet dans un Codespace PHP avec mariadb

blablablba projet

TODO :
- améliorer la structure
- travailler la persistance bdd (historique des scripts ? detection quand on a un nouveau script ?)
- Voir comment le codespace réagit quand on le relance (mélange des genres dand le run.sh déplacer la création bdd métier quand persistance)

## Arborescence du dépôt

Voici l'arborescence du dépôt et le rôle des différents composants. Les fichiers et dossiers à modifier sont en gras :

├── .devcontainer/ # config du codespace
|  ├── devcontainer.json # Configuration du Dev Container pour VS Code
|  └── Dockerfile # Dockerfile pour construire l'image du Dev Container  dans mariadb 
├── .github/ # config pour les alertes de dépendances (sécurité)
├── .vscode/ # config pour XDebug et parametres de vscode
├── database # scripts pour la BDD
|  ├── scripts # contient 2 scripts bash : 1 pour sauver la bdd métier du codespace et 1 pour la recharger à partir du .sql présent dans le dépot
|  └── sources-sql # fichiers SQL pour contruire la BDD métier, ses utilisateurs et ses données 
├── site # Dossier racine du serveur web
└── run.sh # Script de lancement pour démarrer le service mariadb et initialiser la BDD métier (avec ses utilisateurs système) + démarrer les instances web du site et de phpMyAdmin.


## Configuration du Codespace et lancement de l'application

Ce dépôt est configuré pour fonctionner avec les Codespaces de GitHub et les Dev Containers de Visual Studio Code. Suivez les étapes ci-dessous pour configurer votre environnement de développement.


### Utilisation avec GitHub Codespaces
1. **Créez un codespace pour ouvrir ce dépot** :
   - Cliquez sur le bouton "Code" dans GitHub et sélectionnez "Open with Codespaces".
   - Si vous n'avez pas encore de Codespace, cliquez sur "New Codespace".

   Le Codespace ainsi créé contient toutes les configurations nécessaires pour démarrer le développement.

### Serveur php et service mariadb (avec la base métier)

1. **Pour lancer les services** :
   - Dans le terminal, exécutez le script `run.sh` :
     ```bash
     ./run.sh
     ```
   Ce script démarre le serveur PHP intégré sur le port 8000, démarre maraidb et crée la base métier depuis le script renseigné (mettre à jour en fonction du projet).

2. **Ouvrir le service php dans un navigateur** :
   - Accédez à `http://localhost:8000` pour voir la page d'accueil de l'API.

3. **Accèder à la BDD** :
   - En mode commande depuis le client mysql en ligne de commande
   Exemple : 
      ```bash
      mysql -u mediateq-web -p
      ```
   - En client graphique avec l'extension Database dans le codespace (Host:127.0.0.1)

   - avec phpMyAdmin sur le port 8080

4. **Sauver et mettre à jour la BDD** :
   - Si vous avez fait des modifs significatives dans la BDD métier, lancer le script bash saveBDD pour écraser le fichier sql actuel de la bdd par votre sauvegarde
      ```bash
      ./database/scripts/saveBDD.sh 
      ```
   - Si vous avez récupéré du dépot distant une version mise à jour du script de la BDD métier, lancer le script bash reloadBDD pour écraser la bdd actuelle de votre codespace par celle du script.
      ```bash
      ./database/scripts/reloadBDD.sh 
      ```

## Utilisation de XDebug

Ce Codespace contient XDebug pour le débogage PHP. 

1. **Exemple de déboguage avec Visual Studio Code** :
   - Ouvrez le panneau de débogage en cliquant sur l'icône de débogage dans la barre latérale ou en utilisant le raccourci clavier `Ctrl+Shift+D`.
   - Sélectionnez la configuration "Listen for XDebug" et cliquez sur le bouton de lancement (icône de lecture).
   - Ouvrez un fichier php
   - Ajouter un point d'arrêt.
   - Solicitez dans le navigateur une page qui appelle le traitement
   - Une fois le point d'arrêt atteint, essayez de survoler les variables, d'examiner les variables locales, etc.

[Tuto Grafikart : Xdebug, l'exécution pas à pas ](https://grafikart.fr/tutoriels/xdebug-breakpoint-834)



