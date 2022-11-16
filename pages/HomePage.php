<?php require "view/modules/headView.php";?>
<?php require "view/modules/headerView.php";?>

<div class="container">
<div class="row">
        <div class="col-md-12 mt-3 text-center">
            <h1>Bienvenido a la liga de las FutboLeyendas</h1>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <img src='view/resources/gameLeague-logo.png'>
        </div>
        <div class="col-12">
            <h2>10 Cartas, 3 Filas, 1 Ganador</h2>
            <hr>
            <h3>¿Serás tú el GANADOR?</h3>
            <hr>
        </div>
    </div>
    <div class='row tuto'>
        <div class='col-6'>
            <img src='view/resources/tutorial/versus.png' class='imagen-tuto'>
        </div>
        <div class='col-6 font-weight-bold p-3'>
            <label>Coloca tu carta en la misma fila, para contrarrestar la de tu oponente</label><br>
            <label>Escoge con cuidado!!!</label><br>
            <label>ATAQUE VS DEFENSA</label><br>
            <label>CONTROL VS CONTROL</label>
        </div>
    </div>
    <div class='row'>
        <div class='col-12'>
           <hr>
        </div>
    </div>
    <div class='row tuto'>
        <div class='col-6 font-weight-bold p-3 text-end'>
            <label class='p-2'>Elige bien tu atributo</label><br>
            <label class='p-2'><span style='color: green'>Verde</span> es ATAQUE</label><br>
            <label class='p-2'><span style='color: blue'>Azul</span> es CONTROL</label><br>
            <label class='p-2'><span style='color: red'>Rojo</span> es DEFENSA</label><br>
            
        </div>
        <div class='col-6'>
            <img src='view/resources/tutorial/color.png' class='imagen-tuto' style='width: 60%; float: right'>
        </div>
    </div>
    <div class='row'>
        <div class='col-12'>
           <hr>
        </div>
    </div>
    <div class='row tuto'>
        <div class='col-6'>
            <img src='view/resources/tutorial/puntuaciones.png' class='imagen-tuto' style='width: 60%'>
        </div>
        <div class='col-6 font-weight-bold p-3'>
            <label class='p-2'>Dos filas positivas GANAS EL JUEGO</label><br>
            <label class='p-2'>Se calcula automático!!!</label><br>
            <label class='p-2'>Modo Espejo</label><br>
            <label class='p-2'>Valor de <span style='color: green'>ataque</span> vs <span style='color: red'>defensa</span> rival</label><br>
            <label class='p-2'>Valor de <span style='color: blue'>control</span> vs <span style='color: blue'>control</span> rival</label><br>
            <label class='p-2'>Valor de <span style='color: red'>defensa</span> vs <span style='color: green'>ataque</span> rival</label>
        </div>
    </div>
    <div class='row'>
        <div class='col-12'>
           <hr>
        </div>
    </div>
</div>
<?php require "view/modules/modal-loginView.php";?>
<?php require "view/modules/endView.php";?>
