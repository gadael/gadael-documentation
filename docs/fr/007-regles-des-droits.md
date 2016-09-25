title: Les règles des droits
layout: doc

---

## Généralités

Un droit est attribué à un utilisateur s'il est actif et associé au régime. Dans ce cas il apparaitra sur la liste dans la page "Mes droits".
Un droit attribué permet la consultation du solde et des périodes de renouvellements.

Pour qu'un droit puisse être accessible à l'utilisateur lors d'une création de demande d'absences, il est nécessaire que le rôle "Compte utilisateur absence" soit coché dans le champ "actif pour" du droit et que l'ensemble des règles définies sur le droit soient respectées.

Les règles tiennent compte à la fois des paramètres de l'utilisteur et des paramètres de la demande, elles sont utilisée par l'application une fois que la période d'absence demandée à été définie. Les règles servent a filtrer la liste des droits proposés lors de l'étape de répartition de la durée de l'absence sur les droits.


## les types de règles

### Date de la demande

Cette règles permet de spécifier que la date de création de la demande doit être comprise dans la période du renouvellement. Des parmètres permettent de créer des périodes de tolérance avant ou après.

### Période d'absence

Cette règles permet d'imposer que la période d'absence demandée soit comprise dans la période du renouvellement. Des parmètres permettent de créer des périodes de tolérance avant ou après.

### Ancienneté

Cette règle permet de rendre diponible un droit en fonction de l'ancienneté de l'utilisateur, C'est date de début de la période demandée qui sert de référence pour la calcul de la date d'ancienneté (l'ancienneté au premier jour de l'absence).

l'ancienneté est le nombre d'année entre la date de début d'ancienneté contenue dans les paramètres de l'utilisateur et la date de la demande. Si la date de début d'ancienneté n'est pas renseignée dans la fiche de l'utilisateur, cette règle ne sera jamais valide.

Ce type de règle permet de définir des intervales pour l'ancienneté, ce qui permet de créer des paliers, par exemple :

* plus de 20 ans d'ancienneté : 1 jour supplémentaire de congés payés
* de 20 à 25 ans d'ancienneté : 2 jour supplémentaire de congés payés
* à partir de 25 ans d'ancienneté : 3 jour supplémentaire de congés payés

### Age

Cette règle permet de rendre diponible un droit en fonction de l'age de l'utilisateur.

L'age est calculé avec la date de naissance de l'utilisateur au premier jour de la période d'absence demandée.
