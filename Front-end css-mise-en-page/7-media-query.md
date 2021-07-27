# Adaptabilité avec ```Media Query```

> * Auteur : Gwénaël LAURENT
> * Date : 20/04/2021
> * OS : Windows 10 (version 20H2)
> * Chrome : version 90.0.4430.72

- [Adaptabilité avec ```Media Query```](#adaptabilité-avec-media-query)
- [1. Présentation des media queries](#1-présentation-des-media-queries)
- [2. Largeur d'écran](#2-largeur-décran)
- [3. Exemple d'utilisation](#3-exemple-dutilisation)
  - [3.1 Principe](#31-principe)
  - [3.2 Pour les mobiles : 1 colonne](#32-pour-les-mobiles--1-colonne)
  - [3.3 Au dessus de 500px : 2 colonnes](#33-au-dessus-de-500px--2-colonnes)
  - [3.4 Au dessus de 700px : 3 colonnes](#34-au-dessus-de-700px--3-colonnes)
- [4. Documentation](#4-documentation)

# 1. Présentation des media queries
Les requêtes média, plus souvent appelées **```media queries```**, sont un outil de responsive design qui permet d'adapter la feuille de style CSS en fonction de différents paramètres ou caractéristiques de l'appareil. 

Par exemple, on pourra appliquer différents styles si l'écran de l'appareil utilisé pour consulter le document est plus petit qu'une taille donnée ou si l'utilisateur tient son appareil en mode portrait ou paysage. La règle **```@ (ou at-rule)```** **@media** est utilisée afin d'appliquer les styles de façon conditionnelle.

# 2. Largeur d'écran
Pour cibler des largeurs de viewport de façon homogène quelque soit le périphérique, il ne faut pas oublier dans l'en-tête HTML :
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
Documentation : [Alsacreation : Comprendre le Viewport dans le Web mobile](https://www.alsacreations.com/article/lire/1490-comprendre-le-viewport-dans-le-web-mobile.html)

# 3. Exemple d'utilisation
## 3.1 Principe
Une approche courante lors de l'utilisation de Media Queries consiste à créer une disposition à colonne unique simple pour les appareils à écran étroit (par exemple les téléphones portables), puis à vérifier si les écrans sont plus grands et à mettre en œuvre une disposition à colonnes multiples lorsque vous savez que vous avez suffisamment de largeur d'écran pour la prendre en charge.

Source de l'exemple présenté : [MDN Construire des dispositions courantes avec des grilles CSS](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_Grid_Layout/Realizing_common_layouts_using_CSS_Grid_Layout)

## 3.2 Pour les mobiles : 1 colonne
On définit la disposition qu'on aura par défaut et qui sera utilisée pour les mobiles. On ne définit aucune piste (colonne ou ligne) mais cela suffit pour décrire une disposition sur une seule colonne, les lignes seront créées implicitement lorsqu'elles seront nécessaires.
```css
.wrapper {
  display: grid;
  grid-gap: 20px;
  grid-template-areas:
    "header"
    "nav"
    "content"
    "sidebar"
    "ad"
    "footer";
}
```

## 3.3 Au dessus de 500px : 2 colonnes
On peut ajouter une requête média (media query) et redéfinir la disposition lorsqu'on a plus d'espace et qu'on peut afficher deux colonnes 
```css
@media screen and (min-width: 500px) {
  .wrapper {
    grid-template-columns: 1fr 3fr;
    grid-template-areas:
      "header  header"
      "nav     nav"
      "sidebar content"
      "ad      footer";
  }
  nav ul {
    display: flex;
    justify-content: space-between;
  }
}
```

## 3.4 Au dessus de 700px : 3 colonnes
Enfin, on ajoute une autre requête de média pour la disposition avec trois colonnes
```css
@media screen and (min-width: 700px) {
  .wrapper {
    grid-template-columns: 1fr 4fr 1fr;
    grid-template-areas:
      "header header  header"
      "nav    content sidebar"
      "nav    content ad"
      "footer footer  footer"
   }
   nav ul {
     flex-direction: column;
   }
}
```

# 4. Documentation
* [MDN Media queries](https://developer.mozilla.org/fr/docs/Web/CSS/Media_Queries)
* [MDN Utiliser Media queries](https://developer.mozilla.org/fr/docs/Web/CSS/Media_Queries/Using_media_queries)
* [MDN @media](https://developer.mozilla.org/fr/docs/Web/CSS/@media)
* [MDN @import](https://developer.mozilla.org/fr/docs/Web/CSS/@import)
* [MDN Guide du débutant des Media Queries](https://developer.mozilla.org/fr/docs/Learn/CSS/CSS_layout/Media_queries)
* [Alsacreation : Les Media Queries CSS3](https://www.alsacreations.com/article/lire/930-css3-media-queries.html)
* [Alsacreation : Comprendre le Viewport dans le Web mobile](https://www.alsacreations.com/article/lire/1490-comprendre-le-viewport-dans-le-web-mobile.html)
* [www.mydevice.io](https://www.mydevice.io/)
