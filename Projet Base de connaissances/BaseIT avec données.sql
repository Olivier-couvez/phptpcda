-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 23 fév. 2021 à 08:37
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `baseit`
--
DROP DATABASE IF EXISTS `baseit`;
CREATE DATABASE IF NOT EXISTS `baseit` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `baseit`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `idArticle` int(10) NOT NULL AUTO_INCREMENT,
  `idUser` int(10) NOT NULL,
  `idTheme` int(10) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `texte` varchar(10000) NOT NULL,
  `datepub` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `acces` enum('public','private') NOT NULL DEFAULT 'private',
  PRIMARY KEY (`idArticle`),
  KEY `FKarticle226715` (`idTheme`),
  KEY `FKarticle239475` (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`idArticle`, `idUser`, `idTheme`, `titre`, `texte`, `datepub`, `acces`) VALUES
(1, 1, 2, 'PHP : Configurer le debug', 'Le débugage du PHP s\'effectue entre Vscode (le client) et Xdebug (le serveur intégré à Apache/PHP). N\'oubliez pas d\'activer Xdebug dans Wampserver : Clic gauche > PHP > Configuration PHP > xdebug.remote_enable', '2021-02-09 13:01:17', 'public'),
(2, 1, 2, 'HTML : utiliser VScode', 'Installation des extensions\r\nLancez VScode. Dans la barre d\'activité à gauche, cliquez sur l\'icône Extensions.\r\n\r\nAidez vous de la barre de recherche pour trouver et installer les extensions suivantes :\r\n\r\nAuto Rename Tag (Jun Han)\r\nBracket Pair Colorizer (CoenraadS)\r\nDebugger for Chrome (Microsoft)\r\nHTML CSS Support (ecmel)\r\nHTMLHint (Mike Kaufman)\r\nLive Server (Ritwick Dey)\r\nPrettier - Code formatter (Esben Petersen)', '2021-02-09 13:03:30', 'public'),
(3, 1, 1, 'Installation du logiciel git', 'Si l\'utilitaire git est déjà installé sur votre ordinateur, la commande suivante doit renvoyer la version :\r\n>git --version\r\ngit version 2.29.2.windows.2\r\nSi git n\'est pas reconnu en tant que commande interne, il va falloir l\'installer.\r\n\r\nTéléchargez git pour windows sur le site https://git-scm.com/\r\n\r\nDouble cliquez sur le fichier téléchargé : Git-2.29.2.2-64-bit.exe\r\nEmplacement par défaut : C:\\Program Files\\Git\r\nSelect components : par défaut (attention toutefois à avoir coché \"Git Bash Here\" et \"Git GUI Here\")\r\nStart menu folder : git\r\nChoosing the default editor used bu Git : Use Visual Studio Code as Git\'s default editor\r\nAdjusting the name of the initial branch in new repositories : Let Git decide\r\nAdjusting your PATH environment : Git from the command line and also from 3-rd-party software\r\nChoosing HTTPS transport backend : Use the OpenSSL library\r\nConfiguring the line ending conversions : Checkout Windows-style, commit Unix-style line endings\r\nCongiguring the terminal emulator to use with Git Bash : Use MinTTY\r\nChoose the default behavior og \'git pull\' : Default\r\nChoose a credential helper : Git Credential Manager Core\r\nConfiguring extra options : Enable file system caching\r\nConfiguring exêrimental options : RIEN\r\nCliquez sur \"Install\"', '2021-02-09 15:49:02', 'public'),
(4, 1, 1, 'Création du dépôt local : git clone', 'Cette opération n\'est à faire qu\'une seule fois lors de la création du dépôt local\r\n\r\nVous pouvez maintenant synchroniser votre dépôt local avec le dépôt\r\ndistant créé sur GitLab.  Pour ce faire,  dans terminal, positionnez-vous dans le dossier dans lequel vous voulez placer vos travaux.\r\nIdentifiez ensuite l\'adresse de votre dépôt sur gitlab.com.\r\n\r\nSélectionnez votre projet (barre du haut > Projects > Your projects > cliquez sur votre projet)\r\nCliquez sur le bouton Clone sur la droite de l\'écran (bouton bleu)\r\nCliquez sur le bouton à droite de \"Clone with SSH\" pour copier l\'adresse du dépôt dans le presse papier.', '2021-02-09 15:49:02', 'public'),
(5, 1, 4, 'Création d\'un miroir local pour les packages Ubuntu', 'Principe de fonctionnement\r\nSur les VM Ubuntu, les apt install, update, etc chargent les données dans le LAN, sur le NAS synology\r\n\r\nModif de /etc/apt/sources.list des Ubuntu pour référencer le dépôt sur le NAS\r\nLe NAS synology doit avoir une copie de tous les packages Ubuntu\r\n\r\nadresse locale : http://172.16.0.3:82/\r\nle miroir local est une copie de :\r\nhttp://fr.archive.ubuntu.com/ubuntu/\r\nhttp://security.ubuntu.com/ubuntu\r\nLe miroir de dépôt doit être accessible en http pour les Ubuntu\r\nLa création d\'un miroir se fait grâce à l\'appli apt-mirror\r\napt-mirror doit être installé sur une VM Ubuntu (impossible sur synology)\r\nLe dossier de stockage des dépôts est créé sur le NAS et est monté sur la VM Ubuntu', '2021-02-09 15:52:05', 'public'),
(6, 1, 4, 'Création d\'un miroir local pour les packages Raspbian', 'Principe de fonctionnement\r\nSur les raspberry, les apt install, update, etc chargent les données dans le LAN, sur le NAS synology\r\n* Modif de ```/etc/apt/sources.list``` des raspi pour référencer le dépôt sur le NAS\r\n\r\nLe NAS synology doit avoir une copie de tous les packages Raspbian\r\n* adresse locale : **```http://172.16.0.3:81/```**\r\n* le miroir local est une copie de http://raspbian.42.fr/raspbian/ (débit jqa 80Mb/s)\r\n* Le miroir de dépôt doit être accessible en http pour les raspberry\r\n* La création d\'un miroir se fait grâce à l\'appli ```apt-mirror```\r\n* apt-mirror doit être installé sur un raspberry (impossible sur synology)\r\n* Le dossier de stockage des dépôts est créé sur le NAS et est monté sur le raspberry', '2021-02-09 15:52:41', 'public'),
(7, 1, 1, 'Importer dans GitLab.com un dossier de projet existant', 'Sur Gitlab.com, créer un nouveau projet :\r\n\r\nCreate blank project\r\nCopier l\'URL d\'accès à ce nouveau projet en SSH. Par ex : git@gitlab.com:gwenael.laurent/gta-pro.git\r\n\r\n\r\nsi Gitlab.com ne connait pas encore votre clé SSH publique, il faut suivre les indications du §4.5\r\n\r\nSi vous ne l\'avez pas déjà fait :\r\ngit config --global user.email \"votre.adresse@email_connue_de_gitlab\"\r\ngit config --global user.name \"votre nom_sur_gitlab\"\r\nDans le dossier local du projet existant, créer le squelette du dépôt Git local :\r\ngit init\r\nLier le nouveau dépôt distant à votre dépôt local :', '2021-02-16 07:18:40', 'private'),
(8, 1, 1, 'Autres commandes utiles', 'Quand un étudiants nous donne l\'adresse de son GitLab (accès public en lecture seule) :\r\nDans un dossier de l\'ordinateur, par exemple I:\\gitlab_eleves :\r\nDans un terminal, clonez le dépôt dans un dossier avec le nom de l\'étudiant (NOM_prenom):\r\ngit clone git@gitlab.com:toto/tp-toto.git NOM_prenom\r\nOn peut alors ouvrir le contenu local de  I:\\gitlab_eleves\\NOM_prenom dans VScode, etc ... Les modifs ne seront pas répercutées sur le dépôt distant de l\'étudiant.\r\nPlus tard, quand l\'étudiant aura publié de nouveaux fichiers / TP, il vous faudra récupérer ces nouveautés MAIS un git pullne suffira pas SI vous avez des fichiers modifiés en local (pour git, ces modifs sont sensées être republiées sur le dépôt distant, donc la mise à jour ne concerne pas ces fichiers ...)\r\nSi vous voulez forcer la mise à jour du dépôt local (écraser toutes vos modifications locales et recharger les versions actuelles du dépôt distant) :\r\nDans un terminal, à l\'emplacement I:\\gitlab_eleves\\NOM_prenom :\r\ngit fetch --all\r\ngit reset --hard origin/master', '2021-02-16 07:19:24', 'private'),
(9, 1, 3, 'OBS Virtualcam 2.0.5', 'Supported Bit Versions	32-bit, 64-bit\r\nSource Code URL	https://github.com/Fenrirthviti/obs-virtual-cam/releases\r\nMinimum OBS Studio Version	25.0.0\r\nSupported Platforms	Windows\r\nNOTE: The horizontal flip option is bugged and will likely cause crashes. Please do not use it. If you need to flip your video, either flip the sources in OBS itself, or flip on the receiving end (i.e. in Zoom, Skype, etc.)\r\n\r\nThis plugin provides a DirectShow Output as a virtual webcam.\r\n\r\nHow to use:\r\nOBS Virtualcam has two main methods for outputting video from OBS. The first is the Preview output, which is enabled from the Tools menu. This output will provide exactly what you see in the Preview in OBS, including any changes or scenes you might switch to. This is the most common method, and probably what you would want to use.\r\n\r\nPreview Output:\r\n1. Select Tools -> VirtualCam in the main OBS Studio window\r\n2. Press the Start button, then close the dialog\r\n3. Open your program (Zoom, Hangouts, Skype, etc.) and choose OBS-Camera as your webcam\r\n\r\nThe next method is a filter that you can add to any scene or source, if you only want to output that specific scene or source, and nothing else.', '2021-02-16 07:20:39', 'private'),
(10, 1, 3, 'LNE-SYRTE', 'Laboratoire national de métrologie et d\'essais\r\nSystèmes de référence temps-espace\r\nOBSERVATOIRE DE PARIS (OP)', '2021-02-16 07:21:25', 'private'),
(11, 1, 3, 'How to remove UWP apps on Windows 10 1803', 'Windows 10’s Universal Windows Platform apps may possibly be Microsoft’s most unpopular decision – ever. What’s the current thinking on how we can deal with them in our environments?\r\nNote:- this article refers to the removal process for Microsoft UWP (Universal Windows Platform) apps on Windows 10 version 1803, fully patched as of 05/07/2018. Further servicing updates (Windows patches) or feature updates (OS upgrades) will possibly invalidate this, although I will strive to keep this article as up-to-date as humanly possible.\r\n\r\nIt would be safe to say that UWP apps aren’t the most popular move that Microsoft have ever made, whether this be with end-users, administrators, or application developers. Not even a little bit popular, in my experience. So unpopular, in fact, that I hear Microsoft are actually pouring a lot of effort into (again) reinventing their apps platform, next time with something called MSIX (which may, to all intents and purposes, just be App-V 6.0 rebadged). But that’s something for future articles to discuss – right now, if you’re deploying Windows 10 or using it on Citrix XenApp or VMware Horizon, how do you shoehorn these annoying and quite-frankly-useless Windows 10 UWP apps out of your base image?\r\n\r\nLet’s remind ourselves how Windows 10 UWP apps are deployed. They certainly aren’t like standard Windows applications, which we must now quaintly refer to as “legacy”.', '2021-02-16 07:22:04', 'private'),
(12, 1, 3, 'Troubleshooting GPO : utilisation de gpresult', 'Dans ce tutoriel, nous allons apprendre à utiliser un outil indispensable et intégré à Windows : il s\'agit de gpresult. Cet outil est indispensable et très pratique lorsqu\'il s\'agit d\'analyser les stratégies de groupe (GPO) qui s\'appliquent sur un PC, notamment dans le cadre d\'une opération de troubleshooting.\r\n\r\n-Cours - Les bases des stratégies de groupe\r\n\r\n-GPO qui ne s\'applique pas : des pistes à étudier\r\n\r\nGrâce à gpresult il est possible de récupérer un état des GPO qui s\'appliquent sur un utilisateur/ordinateur du domaine. Cet outil va permettre de vérifier qu\'une stratégie de groupe s\'applique bien, et si la GPO ne s\'applique pas, il va permettre de visualiser s\'il y a une erreur associée.  Il intègre également des informations quant au traitement des GPO, notamment le temps de chargement.\r\n\r\nCet outil n\'est pas nouveau puisqu\'il est intégré à Windows depuis Windows XP. Aujourd\'hui, nous utilisons Windows 10 et il s\'avère toujours utile, tout en sachant qu\'il est également intégré à Windows Server. Personnellement, je le préfère en comparaison de la console rsop.msc.', '2021-02-16 07:23:05', 'private'),
(13, 1, 3, ' Installez et déployez Windows 10', 'Vous êtes technicien informatique et votre client vous demande de lui installer Windows 10 sur la totalité de son parc informatique.\r\n\r\nCela vous prendra beaucoup de temps et vous risquez de commettre quelques erreurs qui vous ralentiront encore plus.\r\n\r\nDans ce cours, je vous propose de déployer Windows 10 aussi rapidement que sûrement.\r\nTout d’abord en l’installant et en le paramétrant.\r\n\r\nPuis en créant votre propre installation de Windows personnalisée avec Sysprep.\r\nVous voulez simplifier vos installations Windows 10 ?\r\n\r\nAlors rejoignez-moi dans ce cours.\r\n\r\nN’hésitez pas à vous abonner à notre chaîne Youtube et retrouvez le cours complet sur OpenClassrooms.', '2021-02-16 07:23:42', 'private'),
(14, 1, 1, 'Paramétrer la synchronisation : .gitignore', 'Cette opération n\'est à faire qu\'une seule fois\r\n\r\nUn dépôt Git est destiné à héberger du code source et non pas des fichiers compilés ni les bibliothèques annexes. Pour éviter de stocker de tels fichiers par erreur, nous allons enregistrer un fichier .gitignore qui va indiquer à Git les fichiers qu\'il doit ignorer lors de opérations d\'ajout.\r\nLa façon la plus simple de générer ce fichier est de vous rendre sur le site https://www.gitignore.io, d\'indiquer les systèmes d\'exploitations, les langages de programmation, les framworks, ... que vous utilisez ... puis de cliquer sur Create :', '2021-02-16 07:24:42', 'private'),
(15, 1, 1, 'Envoyer les changements vers le dépôt distant : git push', 'La commande git push  correspond à l\'envoi effectif des changements\r\ndepuis le dépôt local vers le dépot distant.\r\nI:\\mes_tp\\tp_gitlab>git push\r\nEnumerating objects: 4, done.\r\nCounting objects: 100% (4/4), done.\r\nDelta compression using up to 8 threads\r\nCompressing objects: 100% (3/3), done.\r\nWriting objects: 100% (3/3), 2.42 KiB | 2.42 MiB/s, done.\r\nTotal 3 (delta 0), reused 0 (delta 0)\r\nTo gitlab.com:gwenlaurent/tp-laurent-gwenael.git\r\n   c4322da..5e19d73  master -> master\r\nLa commande git status permet de vérifier que le dépôt local et le dépôt distant sont synchronisés :\r\nI:\\mes_tp\\tp_gitlab>git status\r\nOn branch master\r\nYour branch is up to date with \'origin/master\'.\r\n\r\nnothing to commit, working tree clean\r\nEn consultant votre dépôt distant (= Repository) sur gitlab.com vous pouvez  constater que les fichiers ont été ajoutés.', '2021-02-16 07:25:24', 'private'),
(16, 1, 2, 'VScode pour coder du C++ (appli console Windows)', '1. Objectifs\r\nL\'objectif est de configurer VScode pour créer des applications Windows \"Console\" en langage C++ (utiliable dans une CLI, non GUI).\r\nVScode disposera de toute la chaine de développement C++ :\r\n\r\nEdition avec IntelliSense et Linter\r\nAssistant de création de projet C++\r\nAssistant de création de classe\r\nCompilation, linkage (g++, make)\r\nDébugueur avec point d\'arrêt (gdb)\r\nExécution\r\n\r\nLa chaine de compilation C++ choisie est MinGW-w64.\r\n\r\n2. Installation de la chaine de compilation MinGW-w64\r\n\r\nMinGW (Minimalist GNU for Windows) est une adaptation des logiciels de développement et de compilation du GNU (GCC - GNU Compiler Collection), à la plate-forme Windows.\r\nMinGW inclut un ensemble de fichiers d\'en-tête de Windows pour le développement d\'applications natives Windows.\r\n\r\n\r\n2.1 Téléchargement et installation\r\nTélécharger le fichier d\'install de Mingw-w64 (1Mo): Téléchargement sur SourceForge\r\nDouble-cliquez sur le fichier mingw-w64-install.exe pour lancer l\'installation.\r\nSélectionnez l\'architecture x86_64\r\n\r\nSuivant la configuration de votre ordinateur, cette architecture n\'est peut-être pas disponible. Dans ce cas, gardez celle proposée. Vous devrez alors adaptez le nom des dossiers en conséquence', '2021-02-16 07:26:35', 'private'),
(17, 1, 2, 'Installation de VScode sur son ordinateur personnel', 'Objectifs\r\nInstaller VScode pour un seul utilisateur. Cas standard à la maison !\r\n\r\nL\'installation des logiciels nécessite d\'être administrateur de votre machine\r\n\r\n\r\n1. Installation de VScode\r\n\r\nTéléchargez la version System Installer (Windows > System Installer > 64 bit)\r\n\r\n\r\nPage de téléchargement sur code.visualstudio.com\r\n\r\n\r\n\r\nLancez l\'installation en double-cliquant sur le fichier téléchargé (VSCodeSetup-x64-1.38.1.exe)\r\n\r\n\r\nLancez le programme avec l\'icône\r\n\r\nDocumentation officielle pour la version standard\r\n\r\n\r\n\r\n2. Installation de Node.js\r\n\r\nCertaines fonctions avancées de VScode ont besoin de l\'environnement d\'exécution Node.js. C\'est le cas, par exemple, pour la détection automatique des erreurs de codage en Javascript (ESlint).\r\n\r\n\r\nDoc d\'installation de NodeJS\r\n\r\n2. Installation des extensions\r\nEn fonction des langages de programmation que vous utilisez vous aurez besoin d\'ajouter certaines extensions à VScode.\r\nLes extensions utiles sont listées dans les pages correspondant aux langages de programmation :\r\nConfiguration et utilisation de VScode', '2021-02-16 07:27:03', 'private'),
(18, 1, 2, 'VScode pour coder du JavaScript', '1. Installation des extensions\r\n\r\n1.1 Ajout des extensions HTML/CSS\r\nSi ce n\'est pas déjà fait, installez toutes les extensions pour le développement HTML/CSS :\r\n\r\nla liste est ici\r\n\r\n\r\n1.2 Installation de l\'extension ESlint\r\nESlint est un analyseur syntaxique du code JavaScript (un \"linter\"). Il met en évidence :\r\n\r\nles erreurs de code\r\nles problèmes de syntaxe\r\nle non respect de style\r\n\r\n\r\nlinter vs débugueur : le linter détecte les erreurs pendant l\'édition du code (analyse statique) tandis que le débugueur détecte les erreurs pendant l\'exécution (analyse dynamique)\r\n\r\n\r\nESlint est un peu particulier à installer dans VScode car il nécessite plusieurs éléments à installer (un logiciel client et un logiciel serveur) et qu\'il faut le configurer suivant nos besoins.\r\nJe vous propose ici une configuration basique de ESlint pour le code JavaScript intégré aux pages web.\r\n\r\nPour commencer, il faut installer l\'extension (c\'est le logiciel client) de la même manière que les autres extensions. Recherchez et installez :\r\n\r\nESLint (Dirk Baeumer)\r\n\r\n\r\n\r\n1.3 Installation du serveur ESlint\r\n\r\nLe serveur Eslint est un programme qui s\'exécute sur Node.js. Normalement, vous avez déjà installé Node.js, sinon c\'est ici.\r\n\r\nOuvrez un terminal CMD (Invite de commandes Windows) : Dans la barre des tâches de Windows, recherchez cmd et exécutez Invite de commandes\r\n\r\n\r\nDans la fenêtre d\'invite de commandes, tapez la commande suivante, suivie de Entrée :\r\nnpm install -g eslint\r\nLe serveur ESlint va être téléchargé et installé. A la fin de la procédure, il sera disponible pour tous vos projets JavaScript.\r\n\r\nA savoir : On peut également avoir accès à l\'invite de commandes directement dans VScode. Cliquez ici pour savoir choisir le terminal CMD.\r\n\r\n\r\n1.4 Fichier de configuration de ESlint\r\nOuvrez l\'explorateur de fichier windows (raccourci clavier Win + E).\r\nNaviguez jusqu\'au dossier d\'installation de VScode : C:\\Program Files\\Microsoft VS Code\\\r\n\r\nAttention : l\'explorateur de fichier Windows francise certains noms de dossier. Par exemple, le dossier Program Files est affiché sous le nom Programmes ou Program Files suivant les versions de Windows ... Pour connaitre le vrai nom des dosssiers dans lesquels vous naviguez, cliquez dans la barre d\'adresse :\r\n\r\n\r\n\r\nCréez dans ce dossier un nouveau fichier .eslintrc.js (N\'oubliez pas le point en début du nom de fichier).\r\n\r\nAttention : Configurez l\'explorateur Windows pour afficher les extensions des fichiers :\r\n\r\n\r\nOuvrez le fichier .eslintrc.js dans VScode : Clic droit sur le fichier > Open with Code\r\n\r\nCopiez le code suivant dans le fichier .eslintrc.js (c\'est la configuration basique de ESlint). Enregistrez puis Fermez le fichier.\r\nmodule.exports = {\r\n    \"env\": {\r\n        \"browser\": true,\r\n        \"es6\": true,\r\n        \"jquery\": true,\r\n        \"node\": true,\r\n        \"mocha\" : true\r\n    },\r\n    \"extends\": \"eslint:recommended\",\r\n    \"globals\": {\r\n        \"Atomics\": \"readonly\",\r\n        \"SharedArrayBuffer\": \"readonly\"\r\n    },\r\n    \"parserOptions\": {\r\n        \"ecmaVersion\": 2018\r\n    },\r\n    \"rules\": {\r\n    }\r\n};', '2021-02-16 07:27:37', 'private'),
(19, 1, 2, 'VScode pour écrire du Markdown', '1. Installation des extensions\r\nLancez VScode. Dans la barre d\'activité à gauche, cliquez sur l\'icône Extensions.\r\n\r\nAidez vous de la barre de recherche pour trouver et installer les extensions suivantes :\r\n\r\nMarkdown All in One (Yu Zhang)\r\nMarkdown PDF (yzane)\r\n\r\nDans les résultats de recherche, cliquez sur l\'extension désirée et dans la fenêtre de droite, cliquez sur install\r\n\r\nAprès l\'installation de toutes les extensions, fermez et redémarrez VScode.\r\n\r\n2. C\'est quoi le Markdown ?\r\n\r\n\"Markdown est un langage de balisage léger créé en 2004 par John Gruber avec l\'aide d\' Aaron Swartz. Son but est d\'offrir une syntaxe facile à lire et à écrire.\" Page wikipédia\r\n\r\n\r\nUn tuto de démarrage (merci à l\'équipe de l\'université de Lille)\r\n\r\nLes fichiers Markdown ont pour extension .md\r\nLes pages hébergées sur GitLab ou GitHub sont écrites en Markdown, celle que vous lisez en ce moment aussi. Visualisez le code source via le bouton \"Display source\" situés en haut à droite.\r\n\r\n\r\n3. Créer votre fichier Markdown\r\nCréer un fichier readme.md\r\nLa pévisulisation est intégrée à VScode. Quand un fichier Markdown est édité, cliquez sur l\'icône à droite du nom de l\'onglet \"Open Preview to the side\":\r\n\r\n', '2021-02-16 07:28:05', 'private');

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `idDoc` int(10) NOT NULL AUTO_INCREMENT,
  `idArticle` int(10) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `type` enum('img','fichier','lien') DEFAULT NULL,
  PRIMARY KEY (`idDoc`),
  KEY `FKdocument705900` (`idArticle`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`idDoc`, `idArticle`, `nom`, `url`, `type`) VALUES
(1, 1, 'amazon', 'http://amazon.fr', 'lien'),
(2, 1, 'composer', 'https://gitlab.com/gwenael.laurent/public/-/blob/master/vscode/vscode-php-composer.md', 'lien');

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

DROP TABLE IF EXISTS `theme`;
CREATE TABLE IF NOT EXISTS `theme` (
  `idTheme` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idTheme`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`idTheme`, `nom`) VALUES
(1, 'Installation GitLab'),
(2, 'Configuration de VScode'),
(3, 'OS Windows'),
(4, 'OS Linux'),
(5, 'OS Mac');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(10) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `fonction` enum('tech','admin') DEFAULT 'tech',
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`idUser`, `pseudo`, `login`, `password`, `fonction`) VALUES
(1, 'Gwen', 'gwen', '$2y$10$zbo.hvU.EQ3say7dlzB9CutzZhYu6pQUMp3URph2Iaf/Gv7R6H6Hu', 'tech');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
