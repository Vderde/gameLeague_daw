<?php
require "../config/autoclass.php";
$conexion = new Conexion();

$hand = Card::getHand($conexion->link);
echo json_encode($hand);