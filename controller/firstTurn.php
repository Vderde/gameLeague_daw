<?php

require "../config/autoclass.php";
$connection = new Conexion();

$first = new MatchMaking($_GET['idG']);
$tr =$first->searchGI($connection->link);
$tr = $tr->fetch();

echo json_encode($tr);

