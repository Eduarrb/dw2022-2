<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">HEADER</h1>
    </div>
    <div class="row">
        <?php
            if(validar_contenido_tabla('header')){
                ?>
                    <div class="col-md-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="text-info mb-0">Editar componente</h6>
                            </div>
                            <div class="card-body">
                                <?php 
                                    mostrar_msj();
                                    $fila = get_header_edit();
                                ?>
                                <form method="post">
                                    <div class="form-group">
                                        <label for="hea_logo_name">Logo título</label>
                                        <input type="text" name="hea_logo_name" id="hea_logo_name" class="form-control" value="<?php echo $fila['hea_logo_name']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="hea_subtitulo">Subtítulo</label>
                                        <input type="text" name="hea_subtitulo" id="hea_subtitulo" class="form-control" value="<?php echo $fila['hea_subtitulo']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="hea_titulo">Título</label>
                                        <input type="text" name="hea_titulo" id="hea_titulo" class="form-control" value="<?php echo $fila['hea_titulo']; ?>">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Editar" class="btn btn-info" name="editar">
                                    </div>
                                </form>
                                <?php post_header_edit(); ?>
                            </div>
                        </div>
                    </div>
            <?php }
            else {
                ?>
                    <div class="col-md-4">
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="text-primary mb-0">Completar componente</h6>
                            </div>
                            <div class="card-body">
                                <?php mostrar_msj(); ?>
                                <form method="post">
                                    <div class="form-group">
                                        <label for="hea_logo_name">Logo título</label>
                                        <input type="text" name="hea_logo_name" id="hea_logo_name" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="hea_subtitulo">Subtítulo</label>
                                        <input type="text" name="hea_subtitulo" id="hea_subtitulo" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label for="hea_titulo">Título</label>
                                        <input type="text" name="hea_titulo" id="hea_titulo" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" value="Guardar" class="btn btn-primary" name="guardar">
                                    </div>
                                </form>
                                <?php post_header_add(); ?>
                            </div>
                        </div>
                    </div>
            <?php }
        ?>
    </div>
</div>