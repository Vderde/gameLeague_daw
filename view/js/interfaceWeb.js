$(document).ready(function(){

    //REGISTRO
    $("#sign").on("click", function(){
        console.log($('input[name="username"]').val());
        
        $.ajax({
            url : 'controller/sign.php',
            data: {'username': $('input[name="username"]').val(), 'password': $('input[name="password"]').val(), 'name': $('input[name="name"]').val(), 'surname': $('input[name="surname"]').val(), 'email': $('input[name="email"]').val(), 'birthday': $('input[name="birthday"]').val()},
            type : 'POST',
            success : function(response){

                location.href = "index.php";
                
            },
            error : function(xhr1, status1) {
                alert('Error en la conexion');
            }
        });
        
    });
    //INICIO DE SESION

    $("#login").on("click", function(){
        let log ={'username':$('#username').val(), 'password':$('#password').val()}

        $.ajax({
            url : 'controller/login.php',
            data: {'data':log},
            type : 'POST',
            success : function(response){
                if(typeof response === "object")
                    location.href = "index.php?ctrl=game";
                else{
                    alert(response);
                }
            },
            error : function(xhr1, status1) {
                alert('Error en la conexion');
            }
        });

    });
    
});
