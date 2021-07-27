# Mise en page CSS : Sélecteurs CSS

> * Auteur : Gwénaël LAURENT
> * Date : 12/04/2021
> * OS : Windows 10 (version 20H2)
> * VScode : version 1.54.3 (system setup)
> * Node.js : version 12.16.2
> * Chrome : version 89.0.4389.114

- [Mise en page CSS : Sélecteurs CSS](#mise-en-page-css--sélecteurs-css)
- [1. Qu'est ce qu'un sélecteur CSS ?](#1-quest-ce-quun-sélecteur-css-)
- [2. Sélecteurs simples](#2-sélecteurs-simples)
- [3. Liste de sélecteurs](#3-liste-de-sélecteurs)
- [4. Les combinateurs](#4-les-combinateurs)
- [5. Les pseudo-classes](#5-les-pseudo-classes)
- [6. Les pseudo-éléments](#6-les-pseudo-éléments)
- [Documentation :](#documentation-)

# 1. Qu'est ce qu'un sélecteur CSS ?
Dans CSS, les sélecteurs sont utilisés pour cibler les éléments HTML à mettre en forme dans nos pages web.

```css
p {
    color: blue;
}
```
Dans cet exemple :
* "p" est le ```sélecteur CSS``` qui cible toutes les balises HTML ```<p>```
* les accolades encadrent la ```règle CSS``` qui définit l'apparence
* "color" est une``` propriété CSS```
* "blue" est la ```valeur de la propriété```

# 2. Sélecteurs simples
Ce sont les sélecteurs les plus élémentaires qui sont fréquemment combinés pour créer d'autres sélecteurs plus complexes

**Sélecteur de type** :  en fonction du ```nom de la balise``` HTML
```css
/* Cibler tous les éléments <a>. */
a {
  color: red;
}
```
**Sélecteurs de classe** : en fonction de la valeur de l'attribut ```class```.
```css
/* Cible tous les éléments ayant la classe "spacious" */
.spacious {
  margin: 2em;
}

/* Cible tous les éléments <li> ayant la classe "spacious" */
li.spacious {
  margin: 2em;
}
```
**Sélecteurs d'identifiant** : en fonction de la valeur de l'attribut ```id```.
```css
/* L'élément avec l'identifiant id="demo" */
#demo {
  border: red 2px solid;
}
```
**Sélecteurs universels** : L'astérisque (*) est le sélecteur universel en CSS. Il correspond à un élément de n'importe quel type. 
```css
* {
  color: green;
}
```
**Sélecteurs d'attribut** : en fonction de la présence d'un attribut ou selon la valeur donnée d'un attribut.
```css
/* Les éléments <a> avec un attribut title */
a[title] {
  color: purple;
}

/* Les éléments <a> avec un href qui correspond */
/* à "https://example.org" */
a[href="https://example.org"] {
  color: green;
}
```

# 3. Liste de sélecteurs
Une liste de sélecteurs (séparés par une virgule) permet de cibler tous les noeuds correspondants à l'une des conditions.
```css
/* Cible tous les éléments correspondants */
span,
div {
  border: red 2px solid;
}

/* On peut grouper les sélecteurs sur une seule ligne */
h1, h2, h3, h4, h5, h6 { font-family: helvetica; }
```

# 4. Les combinateurs
Les combinateurs sont des sélecteurs qui établissent une relation entre deux sélecteurs ou plus, tel que "A est un enfant de B" ou "A est adjacent à B".

**Les sélecteurs d'éléments descendants** : permet de sélectionner les nœuds qui sont des descendants (pas nécessairement des enfants directs) d'un élément donné.
```css
/* Tous les éléments <li> qui sont des descendants d'un <ul> */
ul li {
  margin: 2em;
}
```
**Les sélecteurs d'éléments enfants** : permet de sélectionner les nœuds qui sont des enfants directs d'un élément donné.
```css
/* Tous les éléments <span> qui sont enfants direct d'une <div> */
div > span {
  background-color: blue;
}
```
**Les sélecteurs de voisin direct** : permet de sélectionner les nœuds qui suivent immédiatement un élément donné.
```css
/* Ne cible que les paragraphes situés directement après une image */
img + p {
  font-style: bold;
}
```
**Les sélecteurs de voisins généraux** : permet de sélectionner les nœuds qui suivent un élément  (mais pas forcément voisin immédiat) et qui ont le même parent.
```css
/* Parmi tous les éléments <img>, cibler tous les éléments <p> qui les suivent. */
img ~ p {
  color: red;
}
```

# 5. Les pseudo-classes
Une pseudo-classe est un mot-clé qui peut être ajouté à un sélecteur afin d'indiquer l'état spécifique dans lequel l'élément doit être pour être ciblé.

**La pseudo-classe :hover** permet de spécifier l'apparence d'un élément au moment où l'utilisateur le survole avec le pointeur, sans nécessairement l'activer.
```css
/* Cible n'importe quel élément <a> lorsque celui-ci est survolé */
a:hover {
  background-color: gold;
}
```
Pour les autres pseudo-classes relatives aux liens hypertextes comme :link, :visited, et :active, voir [MDN :hover](https://developer.mozilla.org/fr/docs/Web/CSS/:hover)

**La pseudo-classe :nth-child(odd)** représente les éléments dont la position est impaire par rapport à leurs voisins
```css
tbody tr:nth-child(odd){
    background-color: grey;
}
```

Documentation : [MDN Liste des pseudo-classes standards](https://developer.mozilla.org/fr/docs/Web/CSS/Pseudo-classes)

# 6. Les pseudo-éléments
Les pseudo-éléments représentent des entités du document qui ne sont pas décrites en HTML. Ils permettent de mettre en forme certaines parties de l'élément ciblé par la règle.

**Le pseudo-élément ::first-line** permet de ne cibler que la première ligne d'un élément visé par le sélecteur.
```css
/* La première ligne de chaque élément <p>. */
p::first-line {
  color: blue;
  text-transform: uppercase;
}
```

**::after crée un pseudo-élément** qui sera le dernier enfant de l'élément sélectionné. Il est souvent utilisé pour ajouter du contenu cosmétique à un élément, en utilisant la propriété CSS content
```css
/* Ajoute une flèche après les liens */
a:after {
  content: "→";
}
```

Documentation : [MDN Liste des pseudo-éléments](https://developer.mozilla.org/fr/docs/Web/CSS/Pseudo-elements)


# Documentation : 
> * [Sélecteurs CSS](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_Selectors)
> * [Référence CSS > Sélecteurs](https://developer.mozilla.org/fr/docs/Web/CSS/Reference#s%C3%A9lecteurs)



```css

```

