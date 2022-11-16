<?php
require "../config/autoclass.php";
$connection = new Conexion();

$games = new MatchMaking($_GET['idG']);
$games = $games->searchGI($connection->link);


$data =$games->fetch();

echo $data['ready'];
