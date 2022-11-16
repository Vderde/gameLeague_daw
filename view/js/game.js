function changeView(i){
    $(".container").hide();
    if(i == 'menu'){
        $('.container-fluid').show();
        $('#decks').empty();
        $('#store-container-card').empty();
    }
    $("#"+i+"View").show();
}

function play(uuid){
    $.ajax({
        url: 'controller/matchMaking.php',
        type: 'POST',
        data: {'uuid': uuid},
        success: function(response){

            let rees = JSON.parse(response);

            if(rees.master){
                let int =setInterval(function(){
                    $.ajax({
                        url: 'controller/acceptGame.php?idG='+rees.idGame,
                        type: 'GET',
                        //data: {'uuid': uuid},
                        success: function(resp){
                            if(resp == '1'){
                                clearInterval(int);
                                if($("#currentDeck").val() == 'x')
                                    location.href="field/field.php?idGame="+rees.idGame;
                                else
                                    location.href="field/field.php?idGame="+rees.idGame+"&deck="+$('#currentDeck').val();
                            }
                        },
                        error: function (){
                            alert('Error matchmaking')
                        }
                    });
                },3000);

                $('#container-time').prepend("<button class='btn btn-sm btn-dark m-1' id='cancel-time'>x</button>");
                var ctime= 0;
                let wait=setInterval(function(){
                    ctime++;
                    $('#time-wait').text(ctime)
                }, 1000);
                $('#cancel-time').on('click', function(){
                    clearInterval(wait);
                    clearInterval(int);
                    $('#time-wait').empty();
                    $.ajax({
                        url: 'controller/cancelMatchMaking.php?idG='+$('body').attr('id'),
                        type: 'GET',
                        success: function(){
                
                            $('#cancel-time').remove();
                        },
                        error: function(xhr1, status1) {
                            alert('Error en la conexion');
                        }
                    });
                });

            }
            else
                location.href="field/field.php?idGame="+rees.idGame;

        },
        error: function (){
            alert('Error de conexion')
        }
    });
}
function exit(){
    $.ajax({
        url: 'controller/quit.php',
        type: 'GET',
        success: function(){

            location.href= 'index.php';
        },
        error: function(xhr1, status1) {
            alert('Error en la conexion');
        }
    });
}

$(document).ready(function(){
    let wx =window.innerWidth;
    let hy =window.innerHeight;
    $('body').width(wx);
    $('body').height(hy);

    
    window.addEventListener('resize', ()=>{
        let wx =window.innerWidth;
        let hy =window.innerHeight;
        if(hy < 794)
            $('#logo img').css('width', 250);
        
        else
            $('#logo img').css('width', 450);
        $('body').width(wx);
        $('body').height(hy);
    });

    $(".container").not("#menuView").hide();


    $('#deck').on('click', function(){
        $('.container-fluid').hide();
        $.ajax({
            url: 'controller/getDeck.php?user='+$('body').attr('id'),
            type: 'GET',
            async: false,
            success: function(resp){
              
                if(resp != 'false'){
                    let decks = JSON.parse(resp);
                    for(let i=0; i < decks.length; i++){
                       
                        $('#decks').append("<input type='radio' name='deck-group' value='"+decks[i].id_deck+"'><button class='btn getDeck' id='"+decks[i].nombre+"'>"+decks[i].nombre+"</button>");
                    }
                    $('.getDeck').on('click', function(){
                        $('#store-container-card').empty();
                        $('#store-container-card').height(window.innerHeight-(window.innerHeight*0.3))
                        let name =$(this).attr('id');
                        for(let j=0; j<decks.length; j++){
                            if(decks[j].nombre == name){
                                let mazo= JSON.parse(decks[j].cardEncoded);
                                for(let k=0; k<mazo.length; k++){
                                    $('#store-container-card').append("<div class='col-lg-2 col-md-3 col-sm-8 m-2 card'><img src='view/resources/cards/"+mazo[k]+".jpg'></div>");
                                }
                            }
                        }
                    });
                    $('input[type=radio]').on('click', function(){
                       $("#currentDeck").val($(this).val());
                    });
                }
            },
            error: function(xhr1, status1) {
                alert('Error en la conexion');
            }
        });
        
        changeView('deck');

    });
    $('#build-deck').on('click', function (){
        $('#store-container-card').empty();
        $('#store-container-card').height(window.innerHeight-(window.innerHeight*0.3));
        
        $.ajax({
            url: 'controller/store.php',
            type: 'GET',
            success: function (response){
                
                var deck = [];
                $('#decks').empty();
                $('#decks').append("<button class='btn btn-success' id='saveDeck'>Save deck</button><div class='progress mt-1'><div class='progress-bar progress-bar-striped progress-bar-animated' role='progressbar' aria-valuenow='0' aria-valuemin='0' aria-valuemax='22' style='width:0%'><label><span>0</span>/22</label></div></div>");
                for(let i=0; i<response.length; i++){
                    $('#store-container-card').append("<div class='col-lg-2 col-md-3 col-sm-8 m-2 card' id='"+response[i].id_card+"'><img src='view/resources/cards/"+response[i].id_card+".jpg'></div>");
                }
                $('.card').on('click', function(){
                    if(deck.length < 22){
                        let id =$(this).attr('id');
                        let check = true;
                        for(let i=0; i<deck.length; i++){
                            if(deck[i]=== id){
                                alert('Ya has introducido esta carta.');
                                check= false;
                                break;
                            }  
                        }
                        if(check){
                            deck.push(id);
                            $('.progress span').text(deck.length);
                            $('.progress-bar').css('width', (deck.length*100)/22+'%');
                        }
                    }
                    else{
                        alert('Máximo de cartas alcanzadas.');
                    }
                });
                $('#saveDeck').on('click', function(){
                    if(deck.length < 22)
                        alert('El mazo no esta completo');
                    else{
                        $('#modalNameDeck').modal('show');

                        $('#btn-save-modal-deck').on('click', function(){
                            if($('#input-name-deck').val() == ""){
                                
                                $('#empty').removeClass('d-none');
                            }
                            else{
                                $('#empty').addClass('d-none');
                                let namDeck = $('#input-name-deck').val();
                                $.ajax({
                                    url: 'controller/getDeck.php',
                                    type: 'POST',
                                    async: false,
                                    data: {'idUser': $('body').attr('id'),'newDeck': deck,'name': namDeck},
                                    success: function(resp){
                                        $('#modalNameDeck').modal('hide');
                                        $('#store-container-card').height(0);
                                        $('#input-name-deck').val('');
                                        changeView('menu');
                                    },
                                    error: function (){
                                        alert('Error al guardar deck')
                                    }
                                });
                            }
                        });
                        $('#cancel-modal').on('click', function(){
                            $('#input-name-deck').val('');
                            $('#empty').addClass('d-none');
                        });
                    }
                });
                
            },
            error: function(xhr1, status1) {
                alert('Error en la conexion');
            }
        });
    });

    $('#btn-back').on('click', function (){
        $('#store-container-card').height(0);
        changeView('menu');
    });
    
})