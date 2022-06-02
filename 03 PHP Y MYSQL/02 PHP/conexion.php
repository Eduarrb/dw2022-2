<?php
    $conexion = mysqli_connect('localhost', 'root', '', 'dw2022_2');
    // if($conexion){
    //     echo 'conexion exitosa';
    // }
    if(!$conexion){
        die("Fallo en la conecion " . mysqli_error($conexion));
    }

?>