<?php

require "../config/autoclass.php";
$connection = new Conexion();
$ranking = Ranking::rankingAll($connection->link);

$ranking= $ranking->fetchAll();

echo json_encode($ranking);