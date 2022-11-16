<?php
require "../config/autoclass.php";
$connection = new Conexion();

$delete = new MatchMaking($_POST['idGame']);
$delete->deleteGame($connection->link);