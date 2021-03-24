# 🍪 Cookie Clicker

Vous avez de la chance le projet Hello World de base de Flutter est un clicker ! On va pouvoir partir de cette base :)

## Mini défis !

* Vous allez réaliser une application de type 'clicker game'.
* Vous allez devoir choisir et réaliser des défis, a chaque défis réalisé vous gagnez le nombre de flamme correspondant.
* A la fin de la journée regardez votre nombre de flamme, le but du jeu est d'en avoir le plus possible !

## C'est quoi un clicker game ?

> Le jeu incrémental (de l'anglais incrémental), ou idle game (littéralement « jeu inactif »), ou encore clicker game est un genre de jeux vidéo dont la mécanique de jeu principale **consiste en de simples actions à l’interactivité volontairement limitée** : il peut s'agir de cliquer à répétition ou bien de simplement laisser le jeu s'exécuter, le « joueur » n'ayant alors rien à faire. Le plus souvent, cette mécanique de jeu **entraîne une progression monétaire virtuelle** permettant d'améliorer certaines caractéristiques afin encore une fois d'accélérer l'acquisition monétaire. **Ce genre apparu au début des années 2000 s'est popularisé avec le succès de Cookie Clicker en 2013** et s'est largement répandu au sein des jeux sur navigateur. [-](https://www.wikiwand.com/fr/Jeu_incr%C3%A9mental)*[Wikipedia](https://www.wikiwand.com/fr/Jeu_incr%C3%A9mental)*

## Un cookie clicker

### Le tout premier du genre :

Voilà à quoi ressemblait la 1ère version du tout premier jeu du genre :

 ![Le premier Cookie clicker mobile](https://i.imgur.com/rjK4IjK.jpg)

### Principe :

Un Cookie Clicker est un jeu vidéo dont l'objectif est de produire un maximum de cookies.

### Système de jeu :

Le joueur doit produire des cookies en cliquant sur un cookie situé à gauche de l'écran.

Les cookies ainsi accumulés permettent d'acheter des objets qui produisent des cookies de manière autonome ou de façon plus rapide : sont ainsi obtenus fermes, usines, mines, mais aussi souris pour cliquer à sa place, etc...

Le prix de ces objets augmentant progressivement. Le joueur a aussi accès à des améliorations permettant d'améliorer sa production, par objets, par clics, ou dans l'absolu. Le jeu ne connaît à l'heure actuelle pas de fin véritable.

## Principe des défis :

* Chaque participant choisis les défis qu'il veut relever.
* Notez les défis que vous voulez relever, ainsi que votre objectif de flamme total.
* Dès qu'un défi est relevé **appeler le formateur pour qu'il viennent le valider**.


:::warning
Attention si vous faites valider votre défis mais qu'il n'est pas terminé vous perdez des points !

* Un défi réussi : Vous remporter le nombre de flamme correspondant 🔥
* Un défi échoué : Vous perdez le nombre de flammes correspondant 💧

:::

## Liste des défis :

| Défi | Flamme(s) |
|----|----|
| Changer les couleurs de l'interface | 🔥 |
| Changer le nom de l'application | 🔥 |
| Prendre un autre thème que celui des cookie | 🔥 |
| Changer la taille et la couleur de la police | 🔥 |
| Mettre une image de fond à l'application | 🔥🔥 |
| Mettre un icône d'application personnalisée | 🔥🔥 |
| Sauvegarder le nombre de cookie (**[key-value data](https://pub.dev/packages/shared_preferences)**) | 🔥🔥 |
| A chaque amélioration acheté, le coût de l'amélioration augmente | 🔥🔥 |
| Mettre une image de cookie à la place du bouton | 🔥🔥 |
| Faire apparaître le coût de chaque amélioration et ce qu'elle fait | 🔥🔥 |
| Pouvoir acheter un multiplicateur de cookie qui coûte 8 🍪 qui fait +1 a chaque clique | 🔥🔥🔥 |
| Animer le changement de cookie 🍪 possédé | 🔥🔥🔥 |
| Ajouter une **bibliothèque** à son application et s'en servir | 🔥🔥🔥 |
| Changer la police en utilisant une **bibliothèque** Google Fonts | 🔥🔥🔥 |
| Les graphismes sont cohérents | 🔥🔥🔥 |
| Pouvoir acheter un "clique automatique" qui fait +1 toutes les secondes (12 🍪) | 🔥🔥🔥🔥 |
| Faire apparaître chaque curseur acheté sur le cookie (utiliser une gridview) | 🔥🔥🔥🔥 |
| Faire une animation d'un '**+1**' qui apparait et disparaît avec les clicks | 🔥🔥🔥🔥 |
| Le cookie change d'apparence en fonction du nombre cliqué (par exemple en fonction de la fréquence de clique) | 🔥🔥🔥🔥 |
| Le cookie change d'apparence en fonction du nombre de cookie total | 🔥🔥🔥🔥 |

## Exemple

 ![](https://i.imgur.com/ZmgzyiY.png)

## Assets graphiques

Voici, pour vous aider, quelques assets graphiques pour démarrer rapidement

| Nom | Image |
|----|----|
| Cursor | <https://i.imgur.com/RIpfRvN.png> |
| Background | <https://i.imgur.com/XBZlqfx.jpg> |
| Cookie | <https://i.imgur.com/ztDDnKb.png> |
| White Halo | <https://i.imgur.com/DNHpuaA.png> |
| Hand | <https://i.imgur.com/QHZcssN.png> |

## Ressources à lire pour avancer

* [Pour comprendre le concept de base de Flutter : les widgets](https://flutter.dev/docs/development/ui/widgets-intro)
* Ajouter une image à votre projet Flutter
* [Les layouts avec Flutter, comment agencer, construire son interface widget par widget](https://flutter.dev/docs/development/ui/layout)
* [Utilisez le Hot Reload (vous ne voudrez plus jamais faire de web après :p)](https://flutter.dev/docs/development/tools/hot-reload#how-to-perform-a-hot-reload)
* [Les animations avec Flutter](https://www.youtube.com/watch?v=GXIJJkq_H8g)
* → Source très utile pour voir comment les widgets se comportent, quand les utiliser etc. [Le material Design pour Flutter](https://material.io/develop/flutter)
* [Générer une palette de couleur pour material](https://material.io/resources/color)
* [Générer les différentes tailles d’image pour un icone d’application](https://makeappicon.com/)
* Tapez “Flutter” sur le play store ou l’app store pour avoir des applications de "démo” avec des themes et idées et même du code directement parfois
* [Comment ajouter des bibliothèques  à votre application](https://flutter.dev/docs/development/packages-and-plugins/using-packages#using-packages) ?
  * 💙 Et le meilleur site du monde pour les bibliothèques Flutter : [Pub.dev](https://pub.dev)


