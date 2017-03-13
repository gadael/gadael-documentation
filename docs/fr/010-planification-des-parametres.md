title: "Planification des paramètres"
layout: doc
contentId: "doc-planning-parameters"

---

Ce guide est destiné aux administrateurs pour planifier les attributions de droits.

<!-- more -->

## Arrivée dans l'entreprise

### La date d'arrivée

La date d'arrivée dans l'entreprise peut être enregistrée sur la fiche de l'utilisateur.

Cette date est utilisée pour :

* ignorer les renouvellements de droits de congés terminés avant l'arrivée de l'utilisateur.
* Ignorer les ajustements de la quantité enregistrée avant la date d'arrivée.

Par exemple, pour les contrats à durée déterminée, il est possible d'utiliser un droit de congés payés avec une augmentation mensuelle de la quantité automatique le premier jour du mois. Dans ce cas les ajustements mensuels des mois qui précèdent la date d'arrivée seront ignorés.

Ce paramètre fait varier la quantité initiale du droit de manière distincte pour chaque utilisateur.

La date d'arrivée est modifiable sur le formulaire de l'utilisateur :

![Modification d'un utilisateur](images/user-account-edit.png)



### Paramétrage de la date de début du régime

Depuis la fiche de visualisation, on peut accéder à la planification des régimes.

Lors de l'arrivée de l'utilisateur, il convient de créer une ligne contenant son régime et uniquement la date de début pour la période d'attribution.

![Modification d'un utilisateur](images/user-account-collections.png)

Les droits du régime seront disponibles à partir de cette date.

La date de fin ne sera utile que s'il est souhaitable de définir à l'avance une date où les droits du régime ne doivent plus être disponibles. Cela peut éviter d'avoir à venir désactiver l'utilisateur à une date précise.


### Modification de la quantité

Pour les droits crédités par mois ou par jours de travail, la quantité initiale doit être modifiée pour prendre en compte les jours travaillés sur le premier renouvellement.

Pour les droits crédités par période de renouvellement, la quantité initiale paramétrée sur le droit sera attribuée, donc il n'est pas nécessaire de faire des modifications.

Depuis la fiche de l'utilisateur, cliquez sur le régime pour modifier les quantités :

![Modification d'un utilisateur](images/user-account-renewalquantity.png)

L'enregistrement de ce formulaire va créer des ajustements sur les droits concernés.

Les ajustements peuvent être visualisés ou ajoutés de manière individuelle sur la fiche
du droit pour l'utilisateur, cet écran est accessible depuis la fiche de visualisation, dans le tableau "Droit d'absences" :

![Modification d'un utilisateur](images/user-account-annual-leave.png)


## Changement de régime

En cas de changement de régime, une date de fin devra être définie sur la plage de date du premier régime, et une nouvelle plage de date devra être ajoutée pour le nouveau régime.

La date de fin de la nouvelle plage de date n'est pas obligatoire.

Lorsque plusieurs régimes sont associés à l'utilisateur, l'écran de modification
des quantités sur les renouvellements peut être utilisé pour définir les quantités
sur les régimes qui ne sont pas encore en cours de validité. Des flèches sont disponibles à coté du nom du régime pour naviguer vers les régimes suivants ou précédents.

## Changement de rythme de travail

L'écran de planification du rythme de travail est accessible depuis la fiche de visualisation de l'utilisateur :

![Modification d'un utilisateur](images/user-account-schedulecalendars.png)

La liste des agendas pouvant être utilisés sur cette page peut être modifiée par l'administrateur depuis la rubrique "agendas".

## Choix de l'agenda des jours fériés

L'écran de planification des jours fériés est accessible depuis la fiche de visualisation de l'utilisateur :

![Modification d'un utilisateur](images/user-account-nwdayscalendars.png)

Cet écran peut être utilisé dans le cas d'un changement de législation, dans ce
cas il faudra modifier la planification pour tous les utilisateurs pour basculer vers le nouvel agenda des jours fériés.

Dans le cas ou l'utilisateur va travailler dans un autre pays avec des jours différents seule sa fiche sera à modifier.

La liste des agendas pouvant être utilisés sur cette page peut être modifiée par l'administrateur depuis la rubrique "agendas".
