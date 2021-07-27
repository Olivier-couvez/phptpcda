<?php
// connexion à la base de donnees
// lecture des messages enregistrees
require "bdd/bddconfig.php";

//// fin ajout
$objBdd = new PDO("mysql:host=$bddserver;dbname=$bddname;charset=utf8", $bddlogin, $bddpass);

try {
    $objBdd = new PDO(
        "mysql:host=$bddserver;
        dbname=$bddname;
        charset=utf8",
        $bddlogin,
        $bddpass
    );

    $objBdd->setAttribute(
        PDO::ATTR_ERRMODE,
        PDO::ERRMODE_EXCEPTION
    );
    $listemessages = $objBdd->query("SELECT * FROM message");
} catch (Exception $prmE) {
    die('Erreur : ' . $prmE->getMessage());
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title><?php $titre; ?></title>
    <link rel="stylesheet" href="css/styles.css" />
</head>

<body>
    <article>
        <h1>Livre d'or</h1>
        <table>
            <thead>
                <tr>
                    <th colspan="2">Les messages</th>
                </tr>
            </thead>
            <tbody>
                <?php
                while ($unmessage = $listemessages->fetch()) {
                ?>
                    <tr>
                        <td>Le : <?= $unmessage['date']; ?></td>
                        <td><?= $unmessage['message']; ?> (<?= $unmessage['pseudo']; ?>)</td>
                    </tr>
                <?php
                } //fin du while

                ?>
            </tbody>
        </table>
        <?php
        $listemessages->closeCursor(); //libère les ressources de la bdd 
        ?>
        <p></p>
        <form method="POST" action="insertMessage.php">
            <fieldset>
                <legend>Ajouter votre commentaire au livre d'or</legend>
                Pseudo :<br />
                <input type="text" name="pseudo" value="" placeholder="votre pseudo" required>
                <br />
                Message :<br>
                <textarea name="commentaire" rows="10" cols="40" placeholder="Votre commentaire" required></textarea>
                <br />
                <input type="submit" value="Enregistrer">
            </fieldset>
        </form>
    </article>
</body>

</html>