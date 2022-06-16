<?php require_once('../resources/config.php'); ?>
<?php 
    if(!isset($_GET['email']) || !isset($_GET['token'])){
        set_mensaje(display_danger_msj("Datos de verificación incorrectos"));
        redirect("register.php");
    } else {
        activar_usuario();
    }
?>  