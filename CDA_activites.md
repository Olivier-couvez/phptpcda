# Formation Back-end 2021 TPCDA (Concepteur Développeur d'Applications)

> * Formateur : Gwénaël LAURENT

# 2021-04-06
* Présentations
* Création de compte Gitlab
* Accès aux ressources de la formation sur Gitlab
* Doc "Web0 - Internet et le web.pdf"
  * Différences Web & Internet
  * Logiciels clients et Serveurs Web
  * Décomposition des requêtes / réponses HTTP
* Configuration de VScode pour le HTML/CSS
  * Installation des extensions
  * settings.json
* Doc "Web1- html5 css les bases.pdf"
  * Séparation HTML - CSS
  * HTML5 sémantique
  * Les balises / attributs / valeurs
  * Tests liens relatifs + images
  * CSS pour le design
  * Les sélecteurs / propriétés / valeurs
  * Sélecteurs avancés


# 2021-04-13
* Doc "Web1- html5 css les bases.pdf"
  * Notions d'héritages des propriétés CSS
  * Sélecteurs de class et d’id
* Création d'un dépôt gitlab pour le rendu des TP
  * Clonage avec ssh (génération de clés rsa)
  * Synchro avec VScode
  * Ajout de membres
* Bases de la mise en page avec CSS
  * Techniques actuelles
  * Boîtes CSS : modèle standard et alternatif
  * Flux d'affichage normal : Balises block ou inline
  * Balises structurantes HTML5
  * Sélecteurs CSS
  * Positionnement ancestral avec inline-block et float
* Mise en page CSS avec Grid Layout
  * Exemple et présentation du TP 1


# 2021-04-20
* TP 1 Mise en page avec CSS Grid Layout
  * 1 Grille 2 colonnes 3 lignes
  * positionnement sur les lignes
  * Dimensionnement flexible avec rem
  * Mise en forme des menu de navigation
  * Mise en forme float
* Notions de responsive et flexibilté
* TP 2 Mise en page avec CSS Grid layout
  * 4 Grilles
  * Positionnement avec des zones nommées
  * Images flexibles
  * Grilles flexibles
  
# 2021-04-27
* Suite TP 2 Mise en page avec CSS Grid layout
  * Alignement des grid items
* Mise en page CSS avec Flexbox
  * disposition unidimensionnelle
  * alignements
* Media Query
  * viewport
  * exemples d'utilisation
* TP 3 Mise en page complètement responsive
  * 3 largeurs d'écrans ciblées
  * Utilisation de Grid Layout
  * Utilisation de Flexbox
  * Utilisation de Media Query
  * Accessibilité

# 2021-05-04
* Suite TP 3 Mise en page complètement responsive
  * finalisation pour les plus avancés
  * simplification du design pour les autres
* Présentation de la programmation Backend en PHP
* Doc "PHP1 - Les bases (étudiants).pdf"
* Installation et configuration de WampServer
  * extensions PHP : xdebug, etc ...
  * Création dun alias
* Premiers tests du serveur web local
* Configuration de VScode pour le PHP
  * Installation des extensions
  * settings.json
* création d'un projet gitlab pour le premier projet PHP

# 2021-05-11
* Suite des bases du langage PHP avec exercices
  * variables, types de données, structures de contrôles
  * fonctions
  * tableaux indexés et associatifs
* Analyse du fonctionnement requête > PHP > Réponse
* Configuration du debug dans VScode
  * launch.json
  * debug pas à pas
  * Variables locales
* Utilisation du PHP pour gérer le modèle du site
  * Chargement de la structure d'un site HTML > Conversion en PHP
  * création d'un template
* Doc "PHP2 - Bases de données (étudiants).pdf"
* Contenu de la base de données "bddtruites" :
  * les données
  * la relation : clés primaires et étrangères
* Déploiement d'une base de données dans PhpMyAdmin
  * gestion des utilisateurs MySQL : sécurité pour le dev. PHP
* PHP : Connexion / déconnexion avec la base :
  * affichage des connexions actives en debug PHP dans phpMyAdmin (Etat>Processus)
  * Gestion des erreurs de connexion : Exceptions
* Fichier de config des accès bases

# 2021-05-18
* Première requête SELECT sans paramètre
  * utilisation de PDO
  * Affichage avec boucle while + fetch()
  * Affichage des photos : modif de la balise img src
* Requêtes HTTP avec données
  * URL et variables d'URL (méthode GET, symboles ? et &)
  * variables superglobales
  * Démo sur le contenu des trames de requête/réponse dans Chrome (F12 > Network)
* Protections contre les attaques XSS
  * exemple d'attaque simple dans les variables GET
  * protection htmlspecialchars() + intval()/strval()
  * application à la page temperatures.php
* Requêtes SQL avec des données venant du Front-End
  * Codage sans protections (query)
  * Codage avec des requêtes préparées (prepare) + bindParam
* Protections contre les injections de code SQL
* Mini projet PHP : "livre d'or"
  * IHM
  * Création base de données
  * Insertion du commentaire
  * Affichage des commentaires

# 2021-05-25
* Back office : authentification
  * Création d'une table des userweb dans la BDD
  * Type de champ "case insensitive" pour le password
  * Hashage du mot de passe : password_hash()
* Les variables de session : notions générales + tests unitaires
    * session_start();
    * superglobale $_SESSION
    * session_destroy();
    * cookie de session
    * sécurisation avec session_regenerate_id();
* Création du back-end authentification
  * Formulaire de saisie des identifiants
  * Sécurisation à la réception des variables de login
  * Vérifier que le login existe dans la BDD 
  * Vérifier que le hashage des mots des password correspondent
  * Création des variables de session 
  * Redirection vers la page d'accueil
  * Mise à jour des ihms en fonction de l'authentification
  * Page de logout : destruction des sessions
  * Protection d'accès aux pages privées
* Déploiement du site PHP/MySQL chez alwaysdata
* Projet "Base de connaissance IT"

# 2021-06-01
* Validation des compétences Back-end 1 : Transat Jacques Vabre
  * Développement back-end PHP pour l’affichage des résultats de la transat Jacques Vabre
  * Déploiement et accès à la base de données avec PDO
  * Affichage des données sur plusieurs pages web
  * Ajout d'une classe de bateau 
  * Interface d’administration sécurisée
* Présentation du framework CodeIgniter 4
  * Design paterm MVC
  * Programmation Objet en PHP + test
  * Installation de Composer
  * Téléchargement du framework avec composer
  * Création d'un virtual-host dans wampserver

# 2021-06-08
* Framework CodeIgniter 4
  * Configuration basique du framework
  * Debug (mode development)
* Pages statiques (sans Base de données : C+V)
  * Les URLs du framework
  * Analyse du contrôleur et de la vue d'accueil
  * Création d'une nouvelle page statique (C+V)
  * Passer des données du contrôleur vers la vue
  * Gestion des liens web (base_url)
  * Template graphique
* Pages dynamiques (avec base de données : C+M+V)
  * Config du framework (Database.php)
  * Création d'une classe Model
  * Page de liste
  * Pagination des résultats
  * Page de détail à partir de la liste
* Gestion des erreurs dans le contrôleur
  * Lever une exception 404
  * Page 404 personnalisée

# 2021-06-22
* Page de recherche dans la base
  * variables d'URL reçues dans le contrôleur
  * requête LIKE dans le modèle
  * gestion des erreurs et ergonomie
* Application pour un autre affichage liste/détail
  * un contrôleur + 2 modèles
  * Modèle : requête sur plusieurs tables
* Visualiser le menu actif
* Modifier les liens de pagination
* Redirection vers une autre page

# 2021-06-29
* API REST avec CodeIgniter
  * Présentation des API web : URI
  * Protocole HTTP, méthode et format JSON
  * API REST dans CodeIgniter 4
  * Routage REST et ResourceController
* API REST méthode GET
  * List + Détail (contrôleur + Modèle)
  * "Status code" des serveurs HTTP
  *  Gestion des erreurs
  *  Test des API avec Postman
*  API REST méthodes POST, PUT et DELETE
   *  Data Transfer Object au format JSON
   *  INSERT, UPDATE, DELETE dans la base avec Query Builder
   *  Test et mise au point avec Postman
* Application : transformer un site PHP standard en utilisant le Framework (Transat Jacques Vabre)
# 2021-07-01
* Déploiement d'un appli web CodeIgniter 4
  * accès SSH pour déployer le framework et gérer les droits sur les dossiers
  * Transfert des fichiers perso avec un client FTP (Filezilla)
  * Déploiement de la base de données
  * Modifier la liaison PHP - MySQL
* Validation des compétences Back-end 2 : Concours photo
  * Développement back-end PHP avec le framework CodeIgniter
  * Déploiement et accès à la base de données
  * Affichage des résultats du concours en PHP avec modèle MVC
  * Création d'une API REST