<?php

if (isset($_GET['ctrl']))
    $page = ucwords($_GET['ctrl']);
else
    $page = 'Home';


$page = $page . 'Page';
if (is_file('pages/' . $page . '.php'))

    require 'pages/' . $page . '.php';

else
    header('Location: pages/404Page.php');