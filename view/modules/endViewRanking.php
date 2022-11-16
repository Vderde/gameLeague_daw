<script src="view/js/jquery-3.3.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="view/js/interfaceWeb.js"></script>
<script type='text/javascript'>
    $.ajax({
        url : 'controller/rankingWeb.php',
        type : 'GET',
        success : function(response){
            let rank = JSON.parse(response);
            let table = "<table class='table bg-light'><thead class='thead-dark'><tr><th scope='col'>#</th><th scope='col'>Username</th><th scope='col'>MMR</th><th scope='col'>Last Game</th><th scope='col'>Games</th></tr></thead><tbody>";
            for(let i=0; i< rank.length; i++){
                table+="<tr><th scope='row'>"+(i+1)+"</th><td>"+rank[i].user+"</td><td>"+rank[i].mmr+"</td><td>"+rank[i].lastGame+"</td><td>"+rank[i].games+"</td></tr>";
            }
            table+="</tbody></table>";
            $('#mainRanking').append(table);
        },
        error : function(xhr1, status1) {
            alert('Error en la conexion');
        }
    });
</script>

</body>
</html>