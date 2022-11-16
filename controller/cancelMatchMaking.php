<?php

require "../config/autoclass.php";
$connection = new Conexion();

$games = new MatchMaking($_GET['idG']);
$games->cancelGame($connection->link);