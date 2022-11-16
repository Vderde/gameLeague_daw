<?php
session_start();
require "../config/autoclass.php";
$conexion = new Conexion();
$data = Store::getAll($conexion->link);

header('Content-Type: application/json; charset=utf-8');
echo json_encode($data);
