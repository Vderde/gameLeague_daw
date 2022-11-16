<?php
require "../config/autoclass.php";
$conexion = new Conexion();

$deck = Deck::currentDeck($conexion->link, $_GET['id']);

$deck = $deck->fetch(PDO::FETCH_ASSOC);

$cartas = json_decode($deck['cardEncoded']);

shuffle($cartas);
for($i=0; $i < 12; $i++){
    array_pop($cartas);
}

$crt=[];
for($j=0; $j< 10; $j++){
    $c = new Card('', '', $cartas[$j]);
    $c=$c->rivalCard($conexion->link);

    $crt[$j]=$c;
}


echo json_encode($crt);
