<?php 
    include "conexion.php"; 
    ob_start();

    if(isset($_GET['borrar'])){
        $id_delete = $_GET['borrar'];
        // echo $id_delete;
        $query = "DELETE FROM peliculas WHERE peli_id = {$id_delete}";
        $queryRes = mysqli_query($conexion, $query);
        header("Location: ./");
    }
?>
