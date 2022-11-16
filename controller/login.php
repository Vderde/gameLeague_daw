<?php
session_start();
require "../config/autoclass.php";
$conexion = new Conexion();
$usuario = new User($_POST['data']['username'], $_POST['data']['password']);

if($login=$usuario->login($conexion->link)){

    $_SESSION['id'] = $login['id_user'];
    $_SESSION['username'] = $login['user'];

    $data =['id_user'=>$login['id_user'], 'user'=>$login['user']];
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($data);

}
else
    echo $data ="El usuario o la contraseña son incorrectas";