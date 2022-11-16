<?php
session_start();
require "../config/autoclass.php";
$connection = new Conexion();
$id= new MatchMaking($_GET['idGame']);
$room=$id->searchGI($connection->link);
$room = $room->fetch();

if($room['id']){
    if($room['id'] === $_GET['idGame']){
        if(isset($_SESSION['id'])){
            if($room['master'] == $_SESSION['id'] || $room['player2'] == $_SESSION['id']){
                if($room['master'] == $_SESSION['id'])
                    $val = $room['player2'];
                else
                    $val = $room['master'];
                ?>

                <?php include "../view/modules/headRoom.php";?>
                <?php 
                if(isset($_GET['deck']))
                    echo "<input type='hidden' id='currentDeck' value='".$_GET['deck']."'>";
                ?>
                <div class="container-fluid" id="<?php echo $room['id']?>">
                    <div class="row justify-content-around text-center bg-info">
                        <div class="col">
                            <span id="player2"><?php echo $val?></span>
                        </div>
                        <div class="col">
                            <label>Turno nº <span id="turno">0</span></label>
                            <input type="hidden" id="turnVal" value="0">
                        </div>
                        <div class="col">
                            <span id="player1"><?php echo $_SESSION['username']?></span>
                            <input type="hidden" id="id_player" value="<?php echo $_SESSION['id']?>">
                        </div>
                    </div>

                    <div class="row  text-center" id="scene">
                        <div class="col-1" id="count-ply-2">
                            <div class="row text-left">
                                <div class="col-12">
                                    <span id="count-2-3">0</span>
                                </div>
                                <div class="col-12">
                                    <span id="count-2-2">0</span>
                                </div>
                                <div class="col-12">
                                    <span id="count-2-1">0</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-10" id="field">
                            <div class="row">
                                <div class="col-6 no-drop-zone" id="ply-2-defense">
                                </div>
                                <div class="col-6 drop-zone" id="ply-1-attack">
                                </div>
                                <div class="col-6 no-drop-zone" id="ply-2-control">
                                </div>
                                <div class="col-6 drop-zone" id="ply-1-control">
                                </div>
                                <div class="col-6 no-drop-zone" id="ply-2-attack">
                                </div>
                                <div class="col-6 drop-zone" id="ply-1-defense">
                                </div>
                            </div>
                        </div>
                        <div class="col-1" id="count-ply-1">
                            <div class="row text-right">
                                <div class="col-12">
                                    <span id="count-1-1">0</span>
                                </div>
                                <div class="col-12">
                                    <span id="count-1-2">0</span>
                                </div>
                                <div class="col-12">
                                    <span id="count-1-3">0</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-around bg-primary" id="container-card">
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                        <div class="col-lg-1 col-sm-2"></div>
                    </div>
                </div>

                <?php require "../view/modules/endRoom.php"; ?>

                <?php
            }
        }
    }
}


