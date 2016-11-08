title: "Questions/Réponses"
layout: doc
contentId: "doc-faq"

---


## Utilisation du service

### Comment mettre en place la diminution du solde des RTT en fonction des arrêts maladie?

TODO

### Comment approvisionner la nouveau le solde du droit au début d'une nouvelle période?

Gadael permet la planification à l'avance des périodes de congés et part du principe que toutes périodes débutent avec le même solde. Une fous le droit créer, il faut créer des périodes de renouvellement, le solde sera renouvellé automatiquement à chaque début de période.

### Il y a déjà un historique de renouvellements mails le nombre de jours du droit doit changer pour la prochaine période et les suivantes, comment faire?

Dans ce cas, il est recommendé de créer un nouveau droit pour éviter toute confusion, si le même nom de droit doit être conservé, il est conseillé de renommer l'ancien. Cette méthode permet de garder l'historique tel quel et d'éviter d'avoir des soldes non consommés sur des périodes passées.

### Comment déclarer absent l'ensemble des employés?

Il faut utiliser la fonctionnalité "Congés imposés" du menu administrateur. Vous pouvez consulter le [chapitre correpsondant](002-guide-de-l-administrateur.html#Conges-imposes) pour plus d'informations.


## Installer son propre serveur

### Ou télécharger le code source? contribuer au développement?

Le code ainsi que la documentation sont disponibles sur [github](https://github.com/gadael/). Toutes les contributions sont ls bienvenues.

### Quels sont les prérequis matériels?

Il n'y a pas de consomation de ressource importante pour l'utilisation de ce logiciel, le serveur devra être dimmentionné en fonction du nombre d'utilisateur pouvant se connecter simultanément.

### Quels sont les prérequis logiciels?

Un sytème linux avec [nodejs](https://nodejs.org/) et [mongodb](https://www.mongodb.com/), le reste des dépendances peut être installées en utilisant [npmjs](https://www.npmjs.com/) et [bower](https://bower.io/). Bien que l'application puisse fonctionner sur n'importe quelle distribution linux. Les développement ont été réalisés sur et pour une distribution debian.

### Comment utiliser la base de données exportée depuis gadael.com?

L'archive exportée est réalisée à partir du dossier produit par la commande [mongodump](https://docs.mongodb.com/manual/reference/program/mongodump/). Il faudra utiliser [mongorestore](https://docs.mongodb.com/manual/tutorial/backup-and-restore-tools/#restore-a-database-with-mongorestore) pour importer ces données sur un autre serveur.

### Ou puis-je trouver un hébergeur compatible?

Les dépendances peuvent être installées sur un serveur dédié ou virtualisé, pour les serveurs sans accès root, les principeaux hébergeur proposent des environements [MEAN](https://en.wikipedia.org/wiki/MEAN_%28software_bundle%29) préconfigurés qui conviennent tout à fait.
