# Les Amis de l'Escalade

**Pour lancer l'application depuis un serveur Tomcat:<br/>**
    - Copier le fichier "escalade.war" présent dans le répertoire "target" du projet.<br/>
    - Coller le fichier "escalade.war" dans le dossier "webapps" du serveur Tomcat.<br/>
    - Lancez votre serveur et rendez-vous sur l'adresse "localhost:[votre port]/escalade/accueil".<br/>
    - Explorez l'application.
<br/>

**Pour créer la Base de Données:<br/>** 
    -  Créer une nouvelle database PostgreSQL 12.0 <br/>
    -  Clic droit sur la nouvelle base, restore <br/>
        -> Selectionnez "escalade/src/main/resources/backup_BDD.sql" et cliquez sur Restore. <br/>
    -  Dans le fichier databse.properties, modifiez jdbc.url, jdbc.user et jdbc.pass par vos identifiants de connexion. <br/>
    -  Votre base de données est connecté au site. <br/>
<br/>
**Pour créer la base de Données avec les fichiers séparés:**<br/>
    - Créer une nouvelle database PostgreSQL 12.0.<br/>
    - Clic droit sur votre nouvelle base, restore<br/>
    -> Dans filename, sélectionnez "escalade/src/main/resources/backup_tables.sql" et cliquez sur Restore.<br/>
    - Pour ajouter les données, ouvrez le fichier "escalade/src/main/resources/backup_data.sql".<br/>
    - Copier/coller les INSERT dans la base de données et lancez les.
<br/>

**L'application possède deux comptes fournis : <br/>**
le compte admin : Pseudo : admin   mdp: admin <br/>
un compte user lambda : Pseudo : than   mdp: seb <br/>

**Pour la configuration serveur :** <br/>
    - Créez un nouveau serveur Tomcat en local.<br/>
    - dans l'onglet deployment, ajouter un Artifact war_exploded. <br/>
    - Toujours dans l'onglet deployment, remplacez le "/[]_war_exploded" de l'application context par "/".<br/>
    - Dans l'onglet Serveur, remplacez la partie de l'URI "/[]_war_exploded" par "/accueil".<br/>

