<?php
require "../config/autoclass.php";
$connection = new Conexion();

$games = MatchMaking::searchGame($connection->link);
$games = $games->fetchAll();

if(!$games){
    $createGame= new MatchMaking(null,$_POST['uuid'], date('Y-m-d h:i:s'), 0, rand(0, 1));
    $createGame->createGame($connection->link);
    $game=$createGame->searchMaster($connection->link);
    foreach ($game as $row){
        echo '{"idGame": '.$row['id'].', "master": true }';
    }
}
else{
    $i=0;
    $length = count($games);

    foreach ($games as $row){

        if($row['ready'] == 0 && $row['master'] != $_POST['uuid']){
            $joinGame= new MatchMaking($row['id'],$row['master'], $row['time'], 1, $row['firstTurn'],$_POST['uuid']);
            $joinGame->joinGame($connection->link);
            echo '{"idGame": '.$row['id'].', "master": false }';
            break;
        }
        ++$i;
        if($length == $i){
            if($row['ready'] == 1){
                $createGame = new MatchMaking(null, $_POST['uuid'], date('Y-m-d h:i:s'), 0, rand(0, 1));
                $createGame->createGame($connection->link);
                $game = $createGame->searchMaster($connection->link);
                foreach ($game as $row1) {
                    echo '{"idGame": ' . $row1['id'] . ', "master": true }';
                }
            }else echo "Tu usuario ya esta buscando partida";
        }
    }
}