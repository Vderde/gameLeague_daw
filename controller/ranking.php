<?php
require "../config/autoclass.php";
$connection = new Conexion();

$ranking = new Ranking($_POST['idUser']);
$player = $ranking->search($connection->link);

    $ranking->games = $player['games']+1;
    $ranking->lastGame = date('Y-m-d h:i:s');

if($_POST['result'] == 1){
    $ranking->win = $player['win']+1;
    $ranking->lose = $player['lose'];
    $ranking->draw = $player['draw'];
    if($player['games']<=20)
        $ranking->elo = $player['mmr']+50;
    else if($player['games']>20 && $player['games']<100)
        $ranking->elo = $player['mmr']+25;
    else
        $ranking->elo = $player['mmr']+15;
}
else if($_POST['result'] == -1){
    $ranking->win = $player['win'];
    $ranking->lose = $player['lose']+1;
    $ranking->draw = $player['draw'];
    if($player['games']<=20)
        $ranking->elo = $player['mmr']-50;
    else if($player['games']>20 && $player['games']<100)
        $ranking->elo = $player['mmr']-25;
    else
        $ranking->elo = $player['mmr']-15;
}
else{
    $ranking->win = $player['win'];
    $ranking->lose = $player['lose'];
    $ranking->draw = $player['draw']+1;
    $ranking->elo = $player['mmr'];
}

$ranking->update($connection->link);