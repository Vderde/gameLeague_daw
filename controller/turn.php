<?php
require "../config/autoclass.php";
$connection = new Conexion();

$game = new Card($_POST['idGame'], $_POST['player']);
$turno = $game->get($connection->link);
$turno= $turno->fetch(PDO::FETCH_ASSOC);


    echo json_encode($turno);
