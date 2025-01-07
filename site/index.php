<?php
include "getRacine.php";
require_once "infosConnexionBDD.inc.php";
include "$racine/controleur/controleurPrincipal.php";
chargerModeles($racine);

if (isset($_GET["action"])){
    $action = $_GET["action"];
}
else{
    $action = "defaut";
}

$fichier = controleurPrincipal($action);
include "$racine/controleur/$fichier";
?>
     