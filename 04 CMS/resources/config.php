<?php
    ob_start();

    session_start();

    defined("DS") ? null : define("DS", DIRECTORY_SEPARATOR); 

    // echo DIRECTORY_SEPARATOR;

    // ⚡⚡ RUTAS RELATIVAS DE ACCESO A LAS VISTAS

    defined("VIEW_FRONT") ? null : define("VIEW_FRONT", __DIR__ . DS . "views/front");
    defined("VIEW_BACK") ? null : define("VIEW_BACK", __DIR__ . DS . "views/back");
    // echo __DIR__;
    // echo VIEW_BACK;

    // ⚡⚡ DEFINIR PARAMETROS DE CONEXION CON CONSTANTES
    defined("DB_HOST") ? null : define("DB_HOST", "localhost");
    defined("DB_USER") ? null : define("DB_USER", "root");
    defined("DB_PASS") ? null : define("DB_PASS", "");
    defined("DB_NAME") ? null : define("DB_NAME", "agencia");

    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

    // if($conexion){
    //     echo "felicidades, estas conectado ✌✌";
    // }
    
    require_once("caller.php");
?>