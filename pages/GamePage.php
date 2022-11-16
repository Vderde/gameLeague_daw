<?php
session_start();
if (!isset($_SESSION['username'])) {
    echo "<div> No estas logueado</div><br>";
    echo "<a class='btn btn-secondary' href='index.php'>HOME</a>";
}
else {
    include "view/modules/headGame.php";?>
   
    <label class="m-3 p-2 rounded" id="user-label"><?php echo $_SESSION['username'];?></label>
    <div class="text-center" id='container-time'><div id=time-wait></div></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col text-center" id="logo">
                    <img src="view/resources/gameLeague-logo.png">
                </div>
            </div>
        </div>
    <div class="container w-25 rounded" id="menuView">
    
        <div class="row justify-content-center m-2">
            <div class="col-md-5 btn m-2 mt-4 btn btn-lg btn-primary" id="play" onclick="play(<?php echo $_SESSION['id']?>)">
                PLAY
                <input type='hidden' id='currentDeck' value='x'>
            </div>
        </div>
        <div class="row justify-content-center m-2">
            <div class="col-md-5 btn m-2 btn btn-lg btn-primary" id="deck">
                DECK
            </div>
        </div>
        <div class="row justify-content-center m-2">
            <div class="col-md-5 btn m-2 mb-4 btn btn-lg btn-secondary" onclick="exit()">
                QUIT
            </div>
        </div>
    </div>


    <div class="container" id="playView">
        <div class="row">
            <div class="col">
play
                <button class="btn btn-secondary" id="cancel-queue">x</button>

                <div id="time"></div>
            </div>
        </div>
    </div>

    <div class="container rounded" id="deckView">
        <div class="row">
            <div class="col">

                <button class="btn-sm btn-dark float-right my-2" id="btn-back">X</button>
                <div class="row">
                    <div class="col-12">
                        <buton class="btn btn-primary my-2" id="build-deck">New Deck</buton>
                    </div>
                    <div class="col-12" id="decks"></div>
                </div>
                <div class="row justify-content-around" id="store-container-card"></div>
            </div>
        </div>
    </div>
 <?php require "view/modules/modal-deckName.php"; ?> 
<?php require "view/modules/endGame.php";} ?>