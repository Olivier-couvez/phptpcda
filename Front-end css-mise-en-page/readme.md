# Mise en page CSS : différentes techniques

> * Auteur : Gwénaël LAURENT
> * Date : 19/04/2021
> * OS : Windows 10 (version 20H2)
> * VScode : version 1.54.3 (system setup)
> * Node.js : version 12.16.2
> * Chrome : version 90.0.4430.72


# 1. Techniques de mise en page
Les techniques de mise en page CSS nous permettent de prendre des éléments contenus dans une page web (balises HTML) et d'en contrôler le placement.

> Chaque technique à ses usages, ses avantages et ses inconvénients. Aucune technique n'a été conçue pour être utilisée isolément.

En schématisant grossièrement, la mise en page web actuelle utilise 4 techniques :
1. **```Grid Layout```** pour la mise en page principale
2. **```Flexbox```** pour la mise ne page des composants internes
3. Les **```techniques standards CSS```** pour les positionnements élémentaires
4. Les **```media queries```** pour le responsive design (adaptation des CSS en fonction de l'appareil)


Pour commencer, il faut bien comprendre le fonctionnement normal de l'affichage HTML : c'est ce qu'on appelle le **```flux d'affichage normal```**. Les techniques de mises en page vont modifier ce flux d'affichage de différentes manières.

> ATTENTION : pour la plupart des éléments de la page, le flux d'affichage normal crée exactement la mise en page dont vous avez besoin. C'est pourquoi **```il est très important de commencer avec un document HTML bien structuré```**.

# 2. HTML et accessibilité
Les techniques de mise en page CSS participent à la mise en forme du contenu HTML. La modification d'ordre appliquée par CSS est uniquement visuelle. **```C'est toujours le document HTML qui contrôle l'ordre utilisé par les médias non-visuels```** (tels que la parole, la navigation au clavier ou le parcours des liens). 

> Les développeurs web doivent utiliser les propriétés d'ordre et de placement uniquement pour des raisons visuelles et non pour réordonner logiquement le contenu.

Source : [Les grilles CSS et l'accessibilité](https://developer.mozilla.org/fr/docs/Web/CSS/CSS_Grid_Layout/CSS_Grid_Layout_and_Accessibility)


# 3. Plan du cours
1. [Flux d'affichage normal](1-flux-normal.md)
2. [Sélecteurs CSS](2-selecteurs-css.md)
3. [Positionnement CSS avec ```inline-block``` et ```float```](3-inline-block-float.md)
4. [Positionnement CSS avec ```position```, ```z-index```, ```columns``` et ```table```](4-position-zindex-table-multicol.md)
5. [Mise en page avec ```Grid Layout```](5-grid.md)
6. [Mise en page avec ```Flexbox```](6-flexbox.md)
7. [Adaptabilité avec ```media query```](7-media-query.md)
8. [Mise en page CSS en ```Responsive Design```](8-responsive-design.md)

