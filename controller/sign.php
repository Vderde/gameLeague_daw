<?php
session_start();
require "../config/autoclass.php";
$conexion = new Conexion();
$usuario = new User($_POST['username'], password_hash($_POST['password'], PASSWORD_DEFAULT), $_POST['name'], $_POST['surname'], $_POST['birthday'], $_POST['email'], date('Y-m-d h:i:s'));
$usuario->insertar($conexion->link);

$id= $usuario->buscar($conexion->link);

$ranking = new Ranking($id['id_user']);
$ranking->add($conexion->link);