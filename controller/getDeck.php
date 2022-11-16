<?php

require "../config/autoclass.php";
$connection = new Conexion();

if(isset($_GET['user'])){
    $allDeck= Deck::searchDecks($connection->link, $_GET['user']);
    $allDeck= $allDeck->fetchAll(PDO::FETCH_ASSOC);
    $array= [];
    foreach($allDeck as $value){
        array_push($array, $value);
    }
    echo json_encode($array);
}
if(isset($_POST['newDeck'])){
    $deck = new Deck($_POST['idUser'], json_encode($_POST['newDeck']), date('Y-m-d h:i:s'), $_POST['name']);
    $deck->newDeck($connection->link);
}

