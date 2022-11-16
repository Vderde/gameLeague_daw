
function firstTurn(id){
    let jug;
    $.ajax({
        url: '../controller/firstTurn.php?idG='+id,
        type: 'GET',
        async: false,
        success: function (response){
            jug=response;
        },
        error: function() {
            alert('Error en el turno');
        }
    });
    return jug;
}
function getHand(){
    var cards;
    if($('#currentDeck').length > 0){
        $.ajax({
            url: '../controller/gameWithDeck.php?id='+$('#currentDeck').val(),
            type: 'GET',
            async: false,
            success: function (response){
                
                let array= JSON.parse(response);
                let sup= [];
                
                for(let j=0; j<array.length; j++){
                   sup.push(array[j][0]);
                }
                cards = sup;

            },
            error: function() {
                alert('Error en la conexion');
            }
        });
    }
    else{
        $.ajax({
            url: '../controller/game.php',
            type: 'GET',
            async: false,
            success: function (response){
                cards = JSON.parse(response);
            },
            error: function() {
                alert('Error en la conexion');
            }
        });
    }
    
    return cards;
}
function showCount(zone, prop){
    let position;
    if(zone.id == 'ply-1-attack'){
        $('#count-1-1').text(Number($('#count-1-1').text())+Number(prop.getAttribute('atk')));
        $('#count-2-3').text($('#count-2-3').text()-prop.getAttribute('atk'));

        position = 'ply-2-attack';
    }
    else if(zone.id == 'ply-1-control'){
        $('#count-1-2').text(Number($('#count-1-2').text())+Number(prop.getAttribute('ctr')));
        $('#count-2-2').text($('#count-2-2').text()-prop.getAttribute('ctr'));
        position = 'ply-2-control';
    }
    else{
        $('#count-1-3').text(Number($('#count-1-3').text())+Number(prop.getAttribute('def')));
        $('#count-2-1').text($('#count-2-1').text()-prop.getAttribute('def'));
        position = 'ply-2-defense';
    }

    $.ajax({
        url: '../controller/inGame.php',
        type: 'POST',
        data: {"idGame": $('.container-fluid').attr('id'), "player": $('#id_player').val(), "card": prop.id, "position": position},
        async: false,
        success: function (response){
        },
        error: function() {
            alert('Error en la conexion');
        }
    });

}
function win(a, b, c){

    let win= ["Has ganado la partida", 1];
    let lose= ["Has perdido la partida", -1];
    let draw= ["Has empatado la partida", 0];

    let w=0;
    let l=0;
    let d=0;

    if(a > 0)
        w++;
    else if(a < 0)
        l++;
    else
        d++;

    if(b > 0)
        w++;
    else if(b < 0)
        l++;
    else
        d++;

    if(c > 0)
        w++;
    else if(c < 0)
        l++;
    else
        d++;


    if(w > 1)
        return win;
    else if(l > 1)
        return lose;
    else
        return draw;

}
function ranking(jugador, result){
    $.ajax({
        url: '../controller/ranking.php',
        type: 'POST',
        data: {"idUser": jugador, "result": result},
        success: function (response){

        },
        error: function() {
            alert('Error en la conexion');
        }
    });
}
function cleanGame(idGame){
    $.ajax({
        url: '../controller/cleanGame.php',
        type: 'POST',
        data: {"idGame": idGame},
        success: function (response){
        },
        error: function() {
            alert('Error en la conexion');
        }
    });
}
function timer(){
    function time(i){
        $('#time').text(i);
    }
    let i= 10;
    let int =setInterval(function (){
        time(i);
        i--;
    }, 1000)
    setTimeout(function (){
        clearInterval(int)
        alert('time over');
    }, 10000)
}


$(document).ready(function(){
  
    alert('EMPIEZA EL JUEGO');
    const idPartida = $('.container-fluid').attr('id');
    let j1;
    let j2;
    let inf = firstTurn(idPartida);
    inf = JSON.parse(inf);

    if( inf.firstTurn === '0'){
        j1= inf.master;
        j2= inf.player2;
    }
    else{
        j1= inf.player2;
        j2= inf.master;
    }

    const jugador1 = j1;
    const jugador2 = j2;
    var TURNO = 0;

    let hand = getHand();
    for(let i=0; i<hand.length; i++){
$("#container-card div:nth-child("+(i+1)+")").append("<img draggable='true' id='"+hand[i].id_card+"' class='cartas zoom tooltips' src='../view/resources/cards/"+hand[i].id_card+".jpg' atk='"+hand[i].ATTACK+"' ctr='"+hand[i].CONTROL+"' def='"+hand[i].DEFENSE+"' title='DEF ="+hand[i].DEFENSE+"\rCTRL="+hand[i].CONTROL+"\rATK="+hand[i].ATTACK+"'>");

    }

    const draggableCard = document.querySelectorAll('.cartas');
    for (let i = 0; i < draggableCard.length; i++) {
        //CUANDO EL ELEMENTO DRAGGABLE EMPIEZA A MOVER
        draggableCard[i].addEventListener('dragstart', e => {
            //e.dataTransfer.setDragImage(dragIcon, 0, 0);
            e.dataTransfer.setData("text/plain", draggableCard[i].id);
           // setTimeout(() => draggableCard[i].classList.add('invisible'), 0);

            $('#ply-1-attack').addClass('attack-drag');
            $('#ply-1-control').addClass('control-drag');
            $('#ply-1-defense').addClass('defense-drag');
        })
        draggableCard[i], addEventListener('dragend', () => {
            draggableCard[i].classList.remove('invisible');
            $('#ply-1-attack').removeClass('attack-drag');
            $('#ply-1-control').removeClass('control-drag');
            $('#ply-1-defense').removeClass('defense-drag');
        });
    }
    for (const dropZone of document.querySelectorAll('.drop-zone')) {
        //CUANDO EL ELEMENTO DRAGGABLE ENTRA EN LA ZONA SIN SER SOLTADO
        dropZone.addEventListener('dragover', e => {
            e.preventDefault();
        });
        //CUANDO EL ELEMENTO DRAGGABLE ES SOLTADO EN LA ZONA
        dropZone.addEventListener('drop', e => {
            e.preventDefault();
            const droppedElementId = e.dataTransfer.getData("text/plain");
            const droppedElement = document.getElementById(droppedElementId);
            droppedElement.classList.remove('invisible');
            dropZone.appendChild(droppedElement);

            droppedElement.draggable = false;
            droppedElement.ondragstart = e => e.preventDefault();
            $('#container-card').hide();
            //$('#container-card').addClass('hidde');
           // setTimeout(function(){$('#container-card').hide();},2000)

            showCount(dropZone, droppedElement);
            TURNO++;
            $('#turno').text(TURNO);
            $('#turnVal').val(TURNO).trigger('change');
        });
    }
    //ZOOM Y ETIQUETA

    $('.zoom').on('click', function zoom(){
        $('#scene').append("<div class='giantCard'><img src='../view/resources/cards/"+$(this).attr('id')+".jpg'></div>");

        $('#scene').on('click', function(){
            $('.giantCard').remove();
        });
    });

    // EVENTO PRINCIPAL DE TURNOS ====================================================================================


        $('#turnVal').on('change', function (){

            if(TURNO%2 == 0){

                if($('#id_player').val() === jugador2){

                }
                else{
                    $('#container-card').hide();


                    let int = setInterval(function () {
                        $.ajax({
                            url: '../controller/turn.php',
                            type: 'POST',
                            data: {"idGame": idPartida, "player": jugador2},
                            async: false,
                            success: function (response) {
                                let res;
                                if (response === 'false') {
                                    console.log('...esperando...');
                                } else {
                                    res = JSON.parse(response);
                                    $.ajax({
                                        url: '../controller/getCard.php',
                                        type: 'POST',
                                        data: {"idGame": idPartida, "player": jugador2, "card": res.card},
                                        async: false,
                                        success: function (respo) {
                                            let cart = JSON.parse(respo);
                                            $('#' + res.position).append("<img draggable='false' class='zoom' src='../view/resources/cards/" + cart[0].id_card + ".jpg' atk='" + cart[0].ATTACK + "' ctr='" + cart[0].CONTROL + "' def='" + cart[0].DEFENSE + "'>");
                                            $('#' + res.position).on('dragstart', function (e) {
                                                e.preventDefault()
                                            });
                                            clearInterval(int);
                                            if (res.position == 'ply-2-attack') {
                                                $('#count-2-1').text(Number($('#count-2-1').text()) + Number(cart[0].ATTACK));
                                                $('#count-1-3').text($('#count-1-3').text() - cart[0].ATTACK);

                                            } else if (res.position == 'ply-2-control') {
                                                $('#count-2-2').text(Number($('#count-2-2').text()) + Number(cart[0].CONTROL));
                                                $('#count-1-2').text($('#count-1-2').text() - cart[0].CONTROL);
                                            } else {
                                                $('#count-2-3').text(Number($('#count-2-3').text()) + Number(cart[0].DEFENSE));
                                                $('#count-1-1').text($('#count-1-1').text() - cart[0].DEFENSE);
                                            }
                                            $('#container-card').show();
                                            TURNO++;
                                            $('#turno').text(TURNO);
                                            $('#turnVal').val(TURNO).trigger('change');
                                        },
                                        error: function () {
                                            alert('Error en la conexion');
                                        }
                                    });
                                }
                            },
                            error: function () {
                                alert('Error en la conexion');
                            }
                        });
                    }, 1000)

                }
            }
            else{
                if($('#id_player').val() === jugador1){
                    if(TURNO == 21){
                        let result = win(parseInt($('#count-1-1').text()), parseInt($('#count-1-2').text()), parseInt($('#count-1-3').text()))
                        ranking(jugador1, result[1]);
                        alert(result[0]);

                        location.href = '../index.php?ctrl=game';
                    }
                }
                else{
                    if(TURNO == 21){
                        let result = win(parseInt($('#count-1-1').text()), parseInt($('#count-1-2').text()), parseInt($('#count-1-3').text()))
                        ranking(jugador2, result[1]);
                        cleanGame(idPartida);
                        alert(result[0]);
                        location.href = '../index.php?ctrl=game';
                    }else{
                        $('#container-card').hide();
                        let int = setInterval(function () {
                            $.ajax({
                                url: '../controller/turn.php',
                                type: 'POST',
                                data: {"idGame": idPartida, "player": jugador1},
                                async: false,
                                success: function (response) {
                                    let res;
                                    if (response === 'false') {
                                        console.log('...esperando...');
                                    } else {
                                        res = JSON.parse(response);
                                        $.ajax({
                                            url: '../controller/getCard.php',
                                            type: 'POST',
                                            data: {"idGame": idPartida, "player": jugador1, "card": res.card},
                                            async: false,
                                            success: function (respo) {
                                                let cart = JSON.parse(respo);
                                                $('#' + res.position).append("<img draggable='false' class='zoom' src='../view/resources/cards/" + cart[0].id_card + ".jpg' atk='" + cart[0].ATTACK + "' ctr='" + cart[0].CONTROL + "' def='" + cart[0].DEFENSE + "'>");
                                                $('#' + res.position).on('dragstart', function (e) {
                                                    e.preventDefault()
                                                });
                                                clearInterval(int);
                                                if (res.position == 'ply-2-attack') {
                                                    $('#count-2-1').text(Number($('#count-2-1').text()) + Number(cart[0].ATTACK));
                                                    $('#count-1-3').text($('#count-1-3').text() - cart[0].ATTACK);

                                                } else if (res.position == 'ply-2-control') {
                                                    $('#count-2-2').text(Number($('#count-2-2').text()) + Number(cart[0].CONTROL));
                                                    $('#count-1-2').text($('#count-1-2').text() - cart[0].CONTROL);
                                                } else {
                                                    $('#count-2-3').text(Number($('#count-2-3').text()) + Number(cart[0].DEFENSE));
                                                    $('#count-1-1').text($('#count-1-1').text() - cart[0].DEFENSE);
                                                }
                                                $('#container-card').show();
                                                TURNO++;
                                                $('#turno').text(TURNO);
                                                $('#turnVal').val(TURNO).trigger('change');
                                            },
                                            error: function () {
                                                alert('Error en la conexion');
                                            }
                                        });
                                    }
                                },
                                error: function () {
                                    alert('Error en la conexion');
                                }
                            });
                        }, 1000)
                    }
                }
            }



        });
    /*

        var k=0;
        var myVar = setInterval(function(){
            console.log(TURNO);

            if(TURNO%2 == 0){
                timer();
            }
            else{
                timer();

            }
            $('#container-card').addClass('hidde');
            setTimeout(function(){$('#container-card').hide();},2000);
            TURNO++;
            k++;
            if(k===10){clearInterval(myVar);}
        },10000);

*/

TURNO++;
    $('#turno').text(TURNO);
    $('#turnVal').val(TURNO).trigger('change');
})