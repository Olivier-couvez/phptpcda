# Mise en page CSS : ```Responsive Web Design```

> * Auteur : Gwénaël LAURENT
> * Date : 19/04/2021
> * OS : Windows 10 (version 20H2)
> * Chrome : version 90.0.4430.72

- [Mise en page CSS : ```Responsive Web Design```](#mise-en-page-css--responsive-web-design)
- [1. Responsive Design](#1-responsive-design)
- [2. Media Queries](#2-media-queries)
  - [2.1 Les tests media](#21-les-tests-media)
  - [2.2 Le méta-tag du viewport](#22-le-méta-tag-du-viewport)
- [3. Mise en page flexible avant le responsive design](#3-mise-en-page-flexible-avant-le-responsive-design)
  - [3.1 Multicol](#31-multicol)
  - [3.2 Flexbox](#32-flexbox)
  - [3.3 CSS grid](#33-css-grid)
  - [3.4 Images responsives](#34-images-responsives)
  - [3.5 Typographie responsive](#35-typographie-responsive)
- [4. Documentation](#4-documentation)

# 1. Responsive Design
Le concept de responsive web design (RWD) est un ensemble de pratiques qui permet aux pages Web de modifier leur disposition et leur apparence pour s'adapter à différentes largeurs d'écran, résolutions, etc.

Il est important de comprendre que le responsive web design n'est pas une technologie à part - c'est un terme utilisé pour décrire une approche de la conception web, ou un ensemble de bonnes pratiques.

# 2. Media Queries
## 2.1 Les tests media
Les Media Queries nous permettent d'effectuer une série de tests (par exemple, si l'écran de l'utilisateur dépasse une certaine largeur, ou une certaine résolution) et d'appliquer le CSS de manière sélective pour donner à la page le style approprié aux besoins de l'utilisateur.

Par exemple, la média query suivante teste si la page Web actuelle est affichée comme média d'écran (donc pas un document à imprimer) et si la fenêtre de visualisation a au moins 800 pixels de large. Le CSS du sélecteur .container ne sera appliqué que si ces deux éléments sont vrais.
```css
@media screen and (min-width: 800px) {
  .container {
    margin: 1em 2em;
  }
}
```
Une approche courante lors de l'utilisation de Media Queries consiste à créer une disposition à colonne unique simple pour les appareils à écran étroit (par exemple les téléphones portables), puis à vérifier si les écrans sont plus grands et à mettre en œuvre une disposition à colonnes multiples lorsque vous savez que vous avez suffisamment de largeur d'écran pour la prendre en charge.

## 2.2 Le méta-tag du viewport
Pour cibler des largeurs de viewport de façon homogène quelque soit le périphérique, il ne faut pas oublier dans l'en-tête HTML :
```html
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```
Cette balise meta dit aux navigateurs mobiles qu'ils doivent ajuster la largeur de la fenêtre à la largeur de l'écran de l'appareil, et mettre l'échelle du document à 100% de sa taille prévue, affichant le document à la taille optimisée pour les mobiles que vous vouliez.

Documentation : [Alsacreation : Comprendre le Viewport dans le Web mobile](https://www.alsacreations.com/article/lire/1490-comprendre-le-viewport-dans-le-web-mobile.html)


# 3. Mise en page flexible avant le responsive design
Les sites responsives ne se contentent pas de changer leur mise en page entre les points de rupture, ils sont construits sur des grilles flexibles. Une grille flexible signifie que vous n'avez pas besoin de cibler toutes les tailles d'appareils possibles et de construire une mise en page parfaite au pixel près.

En utilisant une grille flexible, il suffit de modifier le design au moment où le contenu commence à avoir une piètre apparence. Par exemple, si la longueur des lignes devient illisible à mesure que la taille de l'écran augmente, ou si une boîte se retrouve écrasée avec deux mots sur chaque ligne lorsqu'elle se rétrécit.

## 3.1 Multicol
Lorsque vous spécifiez un column-count, cela indique en combien de colonnes vous voulez que votre contenu soit divisé. Le navigateur calcule alors la taille de celles-ci, une taille qui changera en fonction de la taille de l'écran.
```css
.container {
  column-count: 3;
} 
```
Si vous spécifiez plutôt une largeur de colonne, vous spécifiez une largeur minimale. Le navigateur créera autant de colonnes de cette largeur qu'il en faudra pour que le conteneur soit parfaitement adapté, puis répartira l'espace restant entre toutes les colonnes. Par conséquent, le nombre de colonnes changera en fonction de l'espace disponible.
```css
.container {
  column-width: 10em;
} 
```

## 3.2 Flexbox
Dans Flexbox, les articles flexibles se rétréciront et répartiront l'espace entre les articles en fonction de l'espace dans leur conteneur, en fonction de leur comportement initial. En modifiant les valeurs de flex-grow et flex-shrink  vous pouvez indiquer comment vous souhaitez que les articles se comportent lorsqu'ils rencontrent plus ou moins d'espace autour d'eux.

Dans l'exemple ci-dessous, les éléments flex prendront chacun autant d'espace dans le conteneur flex, en utilisant la notation flex: 1 comme décrit dans la rubrique de mise en page Flexbox: Taille modulable des éléments flex.
```css
.container {
  display: flex;
}

.item {
  flex: 1;
} 
```

## 3.3 CSS grid
Dans la mise en page en grille CSS, l'unité fr permet la répartition de l'espace disponible sur les différentes sections de la grille. L'exemple suivant crée un conteneur de grille avec trois rangées dont la taille est de 1fr. Cela créera trois colonnes, chacune prenant une partie de l'espace disponible dans le conteneur.
```css
.container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
} 
```

## 3.4 Images responsives
L'approche la plus simple pour les images responsive est de prendre une image à la plus grande taille possible et de la réduire à l'affichage.
```css
.logo-banner {
    height: 100%;
    aspect-ratio: auto 279 / 100;
}
```
Cette approche présente un inconvénient évident : L'image peut être affichée à une taille beaucoup plus petite que sa taille réelle, ce qui est un gaspillage de bande passante.

Les images responsives, en utilisant l'élément <picture>  et les attributs <img> srcset et sizes  permettent de résoudre ces deux problèmes. Vous pouvez fournir plusieurs tailles ainsi que des " indices " (méta-données qui décrivent la taille de l'écran et la résolution pour lesquelles l'image est la mieux adaptée), et le navigateur choisira l'image la plus appropriée pour chaque dispositif, en s'assurant qu'un utilisateur téléchargera une taille d'image appropriée pour le dispositif qu'il utilise.
```html
<picture>
    <source srcset="/media/cc0-images/surfer-240-200.jpg"
            media="(min-width: 800px)">
    <img src="/media/cc0-images/painted-hand-298-332.jpg" alt="" />
</picture>
```
Documentation : [MDN Images adaptatives](https://developer.mozilla.org/fr/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images)

## 3.5 Typographie responsive
L'idée d'une typographie responsive décrit essentiellement la modification de la taille des polices de caractères dans les médias queries pour tenir compte d'un nombre plus ou moins important de pixels à l'écran.

Dans cet exemple, nous voulons fixer notre titre de niveau 1 à 4rem, ce qui signifie qu'il sera quatre fois plus gros que notre police de base. C'est un très grand titre ! Nous voulons que ce titre géant ne soit utilisé que sur des écrans de grande taille, c'est pourquoi nous créons d'abord un titre plus petit, puis nous utilisons des média queries pour le remplacer par un titre de plus grande taille si nous savons que l'utilisateur a une taille d'écran d'au moins 1200px.
```css
html {
  font-size: 1em;
}

h1 {
  font-size: 2rem;
}

@media (min-width: 1200px) {
  h1 {
    font-size: 4rem;
  }
} 
```

# 4. Documentation
* [MDN Responsive design](https://developer.mozilla.org/fr/docs/Learn/CSS/CSS_layout/Responsive_Design)