title: "Guide de l'administrateur"
layout: "doc"
contentId: "doc-admin-guide"

---

Les administrateurs sont les personnes qui pourrons accéder à toute la configuration. Cette documentation décrit la gestion des droits, des régimes, des agendas, des utilisateurs, des exports et la création des périodes d'absences à la place des utilisateurs.

<!-- more -->

## Les utilisateurs

![Liste dess utilisateurs vue par l'administrateur](images/userlist-with-one-admin.png)



### Création d'un nouvel utilisateur

### Les rôles

#### Compte utilisateur absences

Visualisation d'un utilisateur, les messages en rouge sont les paramètre manquants de la configuration.

![Visualisation d'un utilisateur](images/user-account-view.png)

Depuis la fiche de visualisation, il est possible de définir le régime de congés,
le rythme de travail et les jours fériés en vigueur.
Les quantités par droit attribuées sur l'utilisateurs peuvent être modifiées pour les cas particuliers.

Pour tous ces paramètres, des configuration doivent être faites dans les autres menu si les choix proposés sont insuffisants.

Vous pouvez consulter l'article concernant la [planification des paramètres](010-planification-des-parametres.html).




Modification d'un utilisateur ayant un compte "absences"

![Modification d'un utilisateur](images/user-account-edit.png)

Lorsque la case "Compte utilisateur absences" est cochée, d'autres options sont visibles sur le formulaire,
et cela fait apparaitre des boutons supplémentaires sur la fiche de visulisation.

Champs supplémentaires disponibles pour ce rôle :

* __Date d'arrivée__ : Cette date est utilisée par l'application pour les calcul de droits avec ajout au solde tous les mois. Un régime standard peut être associé à l'utilisateur car les ajouts mensuels de solde serons effectifs uniquement à partir de cette date.
* __Date de début d'anciennetée__ : Cette date est utilisée pour déterminer si un droit d'anciennetée est visible ou non.
* __Numéro de matricule SAGE__ : Ce champ est utilisé uniquement dans l'export SAGE, il permet d'effectuer un rapprochement avec les comptes de Sage paie lors de l'import mensuel des périodes d'absences.
* __Les options de notification__ : Permet de paramétrer quels sont les emails envoyés. L'utilisateur peut lui même changer ces paramètres lorsqu'il est connecté.




#### Chef de service

Le rôle du chef de service est de valider les demandes d'absences effectuées par les membres de son service.

Un utilisateur peut être responsable de plusieurs services, dans ce cas il devra approuver les demandes en provenance des deux services.

Si une hiérarchie des services est mise en place, les approbation se ferons à plusieurs niveau. La hiérarchie des services est utilisée uniquement pour l'approbation des demandes, il n'est donc pas nécessaire de la paramétrer pour représenter la structure de l'enreprise, il faut l'utiliser pour représenter la struture de l'approbation souhaitée. Par exemple si le service resources humaines doit valider toutes les absences, il doit être placé en haut.


Visualisation d'un compte utilisateur chef de service :

![Visualisation d'un chef de service](images/user-manager-view.png)

Modification d'un chef de service :

![Modification d'un chef de service](images/user-manager-edit.png)

Lors de la modification, le champ de sélection mutiple "Services à superviser lors des demandes d'approbation" permet de déterminer là ou la personne est responsable.

Le champ service qui lui est disonible pour tous les utilisateurs sera utilisé pour déterminer qui est l'approbateur de cette personne.



#### Administrateur

Les personnes désignées par se rôle sont représenté dans l'enreprise par le service des ressources humaines.
Ils pourrons gérer les droits d'absence et les périodes de renouvellements


![Visualisation d'un administrateur](images/user-admin-view.png)

Modification d'un utilisateur avec seulement le rôle administrateur

![Modification d'un administrateur](images/user-admin-edit.png)

## Les types

Les types de droits permettent de regrouper des droits d'absence entre eux.

La liste des types proposés par défaut :

![Les types](images/typelist.png)


Création ou modification d'un type de droit :

![Les types](images/type-edit.png)

Lors de la création d'une demande, l'utilisateur doit répartir les jours demandés sur ces droits de congés, dans la liste, les droits sont groupés par types.
La case a cocher sur le type permet de changer l'état par défaut des droits de ce type. Malgré cette option, tous les types peuvent êtres pliés et dépliés manuellement par l'utilisateur. L'option permet de cacher par défault les droits les moins important quand il peut y en avoir un grand nombre, par example, pour les récupérations, le nombre de droits dépend du nombre de demandes de récupérations acceptées au préalable.

## Les droits

Un droit est un ensemble de règle d'attribution de jours de congés, sur chaque droits,
un ou plusieurs renouvellement peuvent être créés, ils déterminent les périodes d'attribution, au début de chaque renouvellement, le solde est crédité en tenant compte de tous les paramètres du droit.

Suivant les paramètres du droit, il est possible que l'utilisateur puisse avoir accès à plusieurs renouvellements en même temps lorsqu'il souhaite utilisé sont crédit de jour.

La liste des droits :

![Liste des droits](images/rightlist.png)

A partir de la visualisation d'un droit, plusieurs éléments sont paramétrables :
* La modification du droit
* Gérer la liste des règles (permet de définir les conditions qui autorisent l'utilisation du solde, pour plus de détail, consultez la [documentation](007-regles-des-droits.html))
* Gérer la liste des renouvellements
* Visualiser la liste des régimes de congés associés, Les associations régime/droits se font depuis la modification d'un régime.

![Visalisation du droit congés payés annuel](images/right-view-annual-leave.png)





### Création d'un droit

TODO: écran de création des droits spéciaux


lors de la création d'un nouveau droit, il est possible de créé des droits spéciaux avec par example une quantité dynamique en fonction de certains paramètres.

Dans ce cas, il est possible que la quantité initiale ne soit pas visible ou pas modifiable par la suite car elle sera calculée d'une manière différente à chaque début de renouvellement.

### Options du droit

![Modification du droit congés payés annuel](images/right-edit-annual-leave.png)


| Nom du champ                | Description            |
|-----------------------------|------------------------|
| Type                        | Les types de droits permettent de grouper les droits par catégorie lors de la création de demandes de congés |
| Quantité par défaut         | Il s'agit de la quantité initiale de chaque  renouvellement |
| Unité                       | la quantité peut être en jours ou en heures
| Quantité à ajouter tous les mois | Obligatoirement dans la même unité que la quantité par défaut, ce champ permet de définir la quantité attribuée automatiquement chaque premier jour de mois, peandant toute la période du renouvellement. Cette ajout ne sera fait que pour les dates situées après la date d'arrivée dans l'enreprise (champ du compte utilisateur) |
| Actif pour                  | Permet de déterminer qui peut créer les demandes d'absences. Par exemple pour un droit d'absences pour maladie, ou pourra laisser uniquement l'administrateur créer les absences |
| Répartition automatique     | La quantité à distribuer sur les droits sera automatiquement attribuée sur ce droit sans dépassement de la quantité disponible et en respectant l'ordre des types et des droits, si un autre droit existe au dessus avec cette option cochée le solde de ce droit sera utilisé en priorité |
| Require une approbation     | Cette option permet de désactiver l'approbation. Cela peut être utilisé pour les déclaration d'absence maladie, conjointement avec l'option "Active pour". |
| Utiliser la période d'ouverture par défaut | Décocher cette option permet d'élargir la disponibilité du droit en fonction des dates de début et de fin des renouvellements. |
| Permettre les dépôts sur le compte épargne temps | A cocher si ce droit peut être épargné.
| Quantité consommée pour les régimes temps partiel | Cette option permet le choix de la règle de consomation du solde pour les temps partiels, pour plus d'informations consulter la [documentation](006-temps-partiels.html).

### Les renouvellements

Depuis la fiche de visualisation d'un droit, il faut ajouter des renouvellements pour que le droit puisse être accessible. Toutes les règles du droits sont basées sur les périodes de renouvellements.


## Les régimes

Un régime de congés est un ensemble de droits qui peut être associé aux utilisateur.

Un certains nombre de régimes sont initialisés lors de l'installation de l'application,
cette liste dépend du pays d'utilisation.

Des nouveaux régimes peuvent êtres créés en cas de régime de congé particulier.

La liste des régime :

![Les régimes](images/collectionlist.png)

Formulaire de modification d'un régime :

![Modification d'un régime](images/collection-edit.png)

Lors de la création d'un régime, des champs complémentaires peuvent être renseignés :

| Nom du champ                | Description            |
|-----------------------------|------------------------|
| Le pourcentage de présence  | Cette indication est a donner pour les régimes de temps partiel  |
| Les jours ouvrés            | Les jours ouvrés sont utilisés lors du calcul du nombre de jours de RTT a attribuer  |
| jours travaillés de l'accord de la convention collective | Le nombre de jours travaillés dans l'année, il sera utilisé pour le calcul du nombre de RTT |


## Les demandes

Différents types de demandes peuvent être créés par les utilisateur et les administrateurs.

### Demandes de congé

Une demande d'absence peut être une demande de congés créer par un utilisateur ou une absence déclarée par un administrateur
comme par exemple un congé maladie.

Cas particulier : Les congés imposés sont aussi des demandes d'absence créées par les administrateur. La
seule différence est que seul l'interface des congés imposé peut être utilisée pour la modification
de ce type de demande. Malgré cela, ils apparaissent dans les liste des demandes à la fois pour l'utilisateur
et l'administrateur.

### Demandes de récupération de jours travaillés

### Dépôt sur le compte épargne temps

## Congés imposés

Les congés imposés sont créés par les administrateurs pour attribuer la même période d'absence à une population d'utilisateurs donnée.

C'est un outil qui permet de créer des périodes d'absence sur plusieurs utilisateurs à la fois avec les caractéristiques suivantes :

* les absences sont déjà validées (pas de circuit d'approbation)
* un seul droit de congés est utilisé par période.

La quantité consomée par utilisateur peut varier en fonction du planning de travail.


## Les exports

![Exports possibles](images/exports.png)

### Excel

Il existe deux type d'export possibles au format excel :

#### l'export des demandes

Exporte une ligne par demande d'absence. Les demandes doivent être incluses ou a cheval sur la période saisie sur le formulaire d'export.

![Exports possibles](images/export-edit-xlsx.png)

#### l'export des soldes

Exporte une ligne par droit et par utilisateur avec un compte absence.

Le formulaire d'export permet de sélectionner une date. les quantité indiqués dans les différentes colonnes de l'export corespondrons à l'état de l'application à la date demandée.



### Sage

L'export au format SAGE permet d'importer un fichier dans sage paie pour compléter les fiches de paie du mois avec les périodes de congés prises sur le type congés payés.

![Exports possibles](images/export-edit-sage.png)



## Les Agendas

### Liste des agendas

![Liste des agandas disponibles par défaut](images/calendarlist.png)

L'administrateur peut paramétrer depuis cette liste un ensemble d'agenda qui pourrons être utilisé par la suite sur les comptes utilisateurs. Les agendas sont de 3 types possibles :

* Agenda de jours fériés
* Agenda de rythme de travail
* Agenda des vacances scolaires

### Ajouts/Modifications d'agendas

Exemple, modification d'un agenda de rythme de travail présent dans la liste fournie initialement :

![Modification d'un agenda](images/calendar-edit-5d-40h.png)

Pour étendre la liste des agendas proposés par défaut, il faudra utiliser le format [icalendar](https://fr.wikipedia.org/wiki/ICalendar) et disposer d'un serveur pour héberger des fichiers ICS pour qu'ils soient accessibles sur internet.

Le format [icalendar](https://fr.wikipedia.org/wiki/ICalendar) permet de créer des agendas contenant des règles de répétition complexes qui permettrons de répondre a l'ensemble de vos besoins pour la spécifications de vos rythmes de travail.

Il est possible d'utiliser des fichiers ICS créés depuis google agenda en utilisant la fonction de [partage de google agenda](https://support.google.com/calendar/answer/37083). Plus d'informations sont disponbles dans l'aide de google dans le chapitre "Partager un lien vers votre agenda à l'aide de l'adresse de l'agenda", Gadael sera capable d'interpréter votre agenda partagé de la même façon que le ferais outlook ou une autre application d'agenda.

Lors de la création d'un agenda de rythme de travail, deux champs supplémentaires sont visibles :
* l'heure de la demi-journée
* le nombre d'heures moyen d'une journée

Ces paramètres sont utilisé pour convertir les heures en jours car les demandes d'absences sont effectées en heures mais les soldes de congés sont la pluspart du temps en jours, précis à la demi-journée.
