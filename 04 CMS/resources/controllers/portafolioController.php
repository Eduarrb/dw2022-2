<?php
    // 🔥🔥 FRONT
    function get_portafolio_front(){
        $query = query("SELECT port_id, port_img, port_titulo, port_subtitulo FROM portafolio ORDER BY port_id DESC");
        confirmar($query);
        while($fila = fetch_array($query)){
            $portafolio = <<<DELIMITADOR
                <a href="portafolio.php?id={$fila['port_id']}" class="portafolio__contenedor__box__item">
                    <div class="portafolio__contenedor__box__item__imgBox">
                        <img src="img/portafolio/{$fila['port_img']}" alt="01-thumbnail">
                        <div>
                            <i class="fa-solid fa-plus"></i>
                        </div>
                    </div>
                    <div class="portafolio__contenedor__box__item__data">
                        <h3 class="titulo-n3">{$fila['port_titulo']}</h3>
                        <p class="descri-n3 cursiva">{$fila['port_subtitulo']}</p>
                    </div>
                </a>
DELIMITADOR;
            echo $portafolio;
        }
    }

    function get_portafolio_individual(){
        if(isset($_GET['id'])){
            $port_id = limpiar_string(trim($_GET['id']));
            $query = query("UPDATE portafolio SET port_vistas = port_vistas + 1 WHERE port_id = {$port_id}");
            confirmar($query);
            $query = query("SELECT * FROM portafolio a INNER JOIN usuarios b ON a.port_user_id = b.user_id WHERE a.port_id = {$port_id}");
            confirmar($query);
            return fetch_array($query);
        }   
    }

    // 🔥🔥 BACK
    function get_portafolios_back(){
        $query = query("SELECT * FROM portafolio WHERE port_user_id = {$_SESSION['user_id']}");
        confirmar($query);
        while($fila = fetch_array($query)){
            $portafolio = <<<DELIMITER
                <tr>
                    <td><a href="../portafolio.php?id={$fila['port_id']}" target="_blank">{$fila['port_titulo']}</a></td>
                    <td>{$fila['port_subtitulo']}</td>
                    <td><img src="../img/portafolio/{$fila['port_img']}" alt="" width="100"></td>
                    <td style="width: 35%;">{$fila['port_contenido']}</td>
                    <td>{$fila['port_fecha']}</td>
                    <td>{$fila['port_status']}</td>
                    <td>{$fila['port_vistas']}</td>
                    <td>
                        <a href="index.php?portafolio_edit={$fila['port_id']}" class="btn btn-small btn-warning">editar</a>
                    </td>
                    
                </tr>
DELIMITER;
            echo $portafolio;
        }
    }

    function post_portafolio_back(){
        if(isset($_POST['guardar'])){
            $port_titulo = limpiar_string(trim($_POST['port_titulo']));
            $port_subtitulo = limpiar_string(trim($_POST['port_subtitulo']));
            $port_contenido = limpiar_string(trim($_POST['port_contenido']));
            $port_status = limpiar_string(trim($_POST['port_status']));
            $port_img = limpiar_string(trim($_FILES['port_img']['name']));
            $port_img_tmp = $_FILES['port_img']['tmp_name'];

            move_uploaded_file($port_img_tmp, "../img/portafolio/{$port_img}");

            $query = query("INSERT INTO portafolio (port_titulo, port_subtitulo, port_img, port_contenido, port_status, port_fecha, port_user_id) VALUES ('{$port_titulo}', '{$port_subtitulo}', '{$port_img}', '{$port_contenido}', '{$port_status}', NOW(), {$_SESSION['user_id']})");
            confirmar($query);
            set_mensaje(display_success_msj("Item agregado correctamente 👍👍"));
            redirect('index.php?portafolio');
        }
    }
?>