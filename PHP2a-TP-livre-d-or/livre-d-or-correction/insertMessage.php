<?php
// connexion à la base de donnees
// lecture des messages enregistrees
require "bdd/bddconfig.php";

$pseudo_ok = isset($_POST["pseudo"]);
$message_ok = isset($_POST["commentaire"]);

// securisation des variables
if (($pseudo_ok) && ($message_ok)) {
    $pseudo = strval(htmlspecialchars($_POST["pseudo"]));
    $message = strval(htmlspecialchars($_POST["commentaire"]));

    // insert dans la base
    try {
        $objBdd = new PDO("mysql:host=$bddserver;dbname=$bddname;
    charset=utf8", $bddlogin, $bddpass);
        $objBdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $PDOstmt = $objBdd->prepare("insert INTO message (pseudo,message) VALUES (:pseudo, :commentaire)");
        $PDOstmt->bindParam(':pseudo', $pseudo, PDO::PARAM_STR);
        $PDOstmt->bindParam(':commentaire', $message, PDO::PARAM_STR);
        $PDOstmt->execute();

        // recupérer la valeur de l'id du message crée
        $lastId = $objBdd->lastInsertId();
    } catch (Exception $prmE) {
        die('Erreur ; ' . $prmE->getMessage());
    }

    // rediriger vers la page index.php
    $serveur = $_SERVER['HTTP_HOST'];
    $chemin = rtrim(dirname($_SERVER['PHP_SELF']), '/\\');
    $page = 'index.php';
    header("Location: http://$serveur$chemin/$page");
}