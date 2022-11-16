<?php

require "../config/autoclass.php";
$connection = new Conexion();

$game = new MatchMaking($_GET['idG']);
$rival = $game->searchGI($connection->link);

echo json_encode($rival);