title: "Questions/Réponses"
layout: doc
contentId: "doc-faq"

---


## Utilisation du service

### Comment connaitre quels sont les droits qui serons visibles lors d'une demande de congés?

L'administrateur peut renseigner dans la description du droit un texte d'information qui sera visible par l'utilisateur sur la fiche du droit dans la rubrique "Utilisateur > Mes droits". La liste des règles est visible par l'utilisateur, là aussi une règle est représenté par son titre, l'administrateur devra renseigner explicitement la règle utilisée.

### Comment utiliser un compte épargne temps?

Le compte épargne temps est un droit spécifique qui contient toujours une quantité initiale à zéro, contrairement aux autre droit il peut être crédité à partir des demandes de versement sur le compte épargne temps. En dehors de cette spécificité, le compte épargne temps se comporte comme les autres droits, il est soumis aux règles d'utilisation paramétrées par l'administrateur. En tant qu'utilisateur, les règles peuvent être consultées depuis la page "Utilisateur > Mes droits".


### Comment utiliser les soldes négatifs?

Les droits avec soldes négatifs autoriés s'utilisent comme les autres droits, il n'y aurra pas de bloquage lorsque la quantité demandée ne sera pas disponible, les indiquateurs affichant la quantité disponible dans l'application afficherons une quantité négative qui correspondra à la quantité consommée si le solde initial est zéro.

Cela peut être utilisé pour la déclaration d'absence maladie, les congés sans solde, ou bien les jours de formation.


### Comment paramétrer les jours fériés?

Des agendas de jours fériés peuvent êtres ajoutés par l'administrateur depuis la rubrique agenda. Pour chaque utilisateur, il faudra paramétrer la planification de l'agenda depuis sa fiche utilisateur. Pour cela vous pouvez consulter l'article sur la [planification des paramètres](010-planification-des-parametres.html#choix-de-lagenda-des-jours-fériés)

La configuration des jours fériés n'est disponible que pour les utilisateurs avec un compte "absences".

La création de nouveaux agendas de jours fériés utilise l'adresse URL d'un fichier au format [icalendar](https://fr.wikipedia.org/wiki/ICalendar), si les agendas proposés par défaut ne vous conviennent pas, il est possible de créer de nouveaux fichier icalendar qu'il faudra paramétrer et héberger par vous même. Les fichiers fournis par défaut utilisant le projet [icsdb](https://github.com/gadael/icsdb) qui peut être amélioré par des contributions extérieures.

### Comment paramétrer les rythmes de travail?

Des agendas de rythme de travail peuvent êtres ajoutés par l'administrateur depuis la rubrique agenda. Pour chaque utilisateur, il faudra paramétrer la planification de l'agenda depuis sa fiche utilisateur. Pour cela vous pouvez consulter l'article sur la [planification des paramètres](010-planification-des-parametres.html#changement-de-rythme-de-travail)

La configuration des rythmes de travail n'est disponible que pour les utilisateurs avec un compte "absences".

La création de nouveaux agendas de rythme de travail utilise l'adresse URL d'un fichier au format [icalendar](https://fr.wikipedia.org/wiki/ICalendar), si les agendas proposés par défaut ne vous conviennent pas, il est possible de créer de nouveaux fichier icalendar qu'il faudra paramétrer et héberger par vous même.

Les différents rythmes de travail proposés par défaut sont disponibles en exemple dans [ce dossier](https://github.com/gadael/gadael/tree/master/public/calendars)

### Comment mettre en place la diminution du solde des RTT en fonction des arrêts maladie?

Il faut paramétrer cela dans le droit RTT, dans l'encadré intitulé "Quantité du droit fournie a chaque renouvellement" une case a cocher permet de faire appraitre des options pour la diminution automatique du solde.

La modification du solde peut se faire par paliers, par example une diminution de 1 jour de RTT pour 5 jours d'arret maladie. La comptabilisation des arret maladie sera effectuée à partir des types de droits sélectionnés dans le formulaire.

### Comment approvisionner le nouveau solde du droit au début d'une nouvelle période?

Gadael permet la planification à l'avance des périodes de congés et part du principe que toutes périodes débutent avec le même solde. Une fois le droit créer, il faut créer des périodes de renouvellement, le solde sera renouvelé automatiquement à chaque début de période.

### Il y a déjà un historique de renouvellements mails le nombre de jours du droit doit changer pour la prochaine période et les suivantes, comment faire?

Dans ce cas, il est recommandé de créer un nouveau droit pour éviter toute confusion, si le même nom de droit doit être conservé, il est conseillé de renommer l'ancien. Cette méthode permet de garder l'historique tel quel et d'éviter d'avoir des soldes non consommés sur des périodes passées.

### Comment déclarer absent l'ensemble des employés?

Il faut utiliser la fonctionnalité "Congés imposés" du menu administrateur. Vous pouvez consulter le [chapitre correpsondant](002-guide-de-l-administrateur.html#Conges-imposes) pour plus d'informations.


## Installer son propre serveur

### Ou télécharger le code source? contribuer au développement?

Le code ainsi que la documentation sont disponibles sur [github](https://github.com/gadael/). Toutes les contributions sont les bienvenues.

### Quels sont les prérequis matériels?

Il n'y a pas de consommation de ressource importante pour l'utilisation de ce logiciel, le serveur devra être dimensionné en fonction du nombre d'utilisateur pouvant se connecter simultanément.

### Quels sont les prérequis logiciels?

Un sytème linux avec [nodejs](https://nodejs.org/) et [mongodb](https://www.mongodb.com/), le reste des dépendances peut être installées en utilisant [npmjs](https://www.npmjs.com/) et [bower](https://bower.io/). Bien que l'application puisse fonctionner sur n'importe quelle distribution linux. Les développement ont été réalisés sur et pour une distribution debian.

### Comment utiliser la base de données exportée depuis gadael.com?

L'archive exportée est réalisée à partir du dossier produit par la commande [mongodump](https://docs.mongodb.com/manual/reference/program/mongodump/). Il faudra utiliser [mongorestore](https://docs.mongodb.com/manual/tutorial/backup-and-restore-tools/#restore-a-database-with-mongorestore) pour importer ces données sur un autre serveur.

### Ou puis-je trouver un hébergeur compatible?

Les dépendances peuvent être installées sur un serveur dédié ou virtualisé, pour les serveurs sans accès root, les principaux hébergeur proposent des environnements [MEAN](https://en.wikipedia.org/wiki/MEAN_%28software_bundle%29) pré-configurés qui conviennent tout à fait.
