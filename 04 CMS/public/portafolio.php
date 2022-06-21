<?php require_once("../resources/config.php"); ?>

<?php include(VIEW_FRONT . DS . "head.php"); ?>

<?php include(VIEW_FRONT . DS . "header_port.php"); ?>

    <?php $fila = get_portafolio_individual(); ?>
    <section class="portafolio pt-10">
        <div class="portafolio__contenedor contenedor">
            <img src="img/portafolio/<?php echo $fila['port_img'] ?>" alt="" class="block-center">
            <h2 class="text-center titulo-n2 mt-3"><?php echo $fila['port_titulo']; ?></h2>
            <p class="descri-n2 text-center"><?php echo $fila['port_subtitulo']; ?></p>
            <p class="descri-n3 text-center">
                <i class="fa-solid fa-eye"></i> <?php echo $fila['port_vistas']; ?>
            </p>
            <div class="d-flex justify-evenly mt-5">
                <div class="descri-n3"><strong>Por <?php echo $fila['user_nombres'] . " " . $fila['user_apellidos']; ?></strong></div>
                <div class="descri-n3"><?php echo $fila['port_fecha']; ?></div>
            </div>
            <p class="descri-n3 mt-3"><?php echo $fila['port_contenido']; ?></p>
        </div>
    </section>

<?php include(VIEW_FRONT . DS . "footer.php"); ?>
