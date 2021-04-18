# Les Amis de l'Escalade

**Pour la Base de Données:<br/>** 
    -  Créer une nouvelle database PostgreSQL 12.0 <br/>
    -  Clic droit sur la nouvelle base, restore <br/>
        -> Selectionnez "escalade/src/main/resources/backup_BDD.sql" et cliquez sur Restore. <br/>
    -  Dans le fichier databse.properties, modifiez jdbc.url, jdbc.user et jdbc.pass par vaut identifiants de connexion. <br/>
    -  Votre base de données est connecté au site. <br/>
<br/>
**Pour la configuration serveur :** <br/>
    - Créez un nouveau serveur Tomcat en local.<br/>
    - dans l'onglet deployment, ajouter un Artifact war_exploded. <br/>
    - Toujours dans l'onglet deployment, remplacez le "/[]_war_exploded" de l'application context par "/".<br/>
    - Dans l'onglet Serveur, remplacez la partie de l'URI "/[]_war_exploded" par "/accueil".<br/>

