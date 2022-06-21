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


    // 🔥🔥 BACK

?>