<?php
    // nos devuelve una respuesta de la base de datos
    function query($consulta){
        global $conexion;
        return mysqli_query($conexion, $consulta);
    }
    // valida si la consulta esta bien hecha
    function confirmar($query){
        global $conexion;
        if(!$query){
            die("Fallo en la conexion " . mysqli_error($conexion));
        }
    }
    // nos devuelve un array asociativo
    function fetch_array($query){
        return mysqli_fetch_array($query);
    }

?>