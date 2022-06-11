<?php
    // FRONT
    function get_header(){
        $query = query("SELECT * FROM header");
        confirmar($query);
        return fetch_array($query);
    }

    // BACK
    function post_header_add(){
        if(isset($_POST['guardar'])){
            $hea_logo_name = limpiar_string(trim($_POST['hea_logo_name']));
            $hea_subtitulo = limpiar_string(trim($_POST['hea_subtitulo']));
            $hea_titulo = limpiar_string(trim($_POST['hea_titulo']));

            $query = query("INSERT INTO header (hea_logo_name, hea_subtitulo, hea_titulo) VALUES ('{$hea_logo_name}', '{$hea_subtitulo}', '{$hea_titulo}')");
            confirmar($query);
            set_mensaje(display_success_msj("contenido agregado correctamente"));
            redirect("index.php?header");
        }
    }

?>