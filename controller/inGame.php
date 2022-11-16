<?php
require "../config/autoclass.php";
$connection = new Conexion();

$turn = new Card((int)$_POST['idGame'], (int)$_POST['player'], (int)$_POST['card'], $_POST['position']);
$turn->add($connection->link);

