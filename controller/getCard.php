<?php
require "../config/autoclass.php";
$connection = new Conexion();

$carta = new Card($_POST['idGame'], $_POST['player'], $_POST['card']);
$ca = $carta->rivalCard($connection->link);
echo json_encode($ca);

$carta->deleteRivalCard($connection->link);
