<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">EDITAR ITEM</h1>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-body">
                    <?php
                        if(isset($_GET['portafolio_edit'])){
                            $id = limpiar_string(trim($_GET['portafolio_edit']));
                            $fila = get_data_anyTable('portafolio', 'port_id', $id);
                            // print_r($fila);
                        }
                    ?>
                    <form method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="port_titulo">Título</label>
                            <input type="text" class="form-control" name="port_titulo" id="port_titulo" value="<?php echo $fila['port_titulo']; ?>">
                        </div>
                        <div class="form-group">
                            <label for="port_subtitulo">Subtítulo</label>
                            <input type="text" class="form-control" name="port_subtitulo" id="port_subtitulo" value="<?php echo $fila['port_subtitulo']; ?>">
                        </div>
                        <div class="form-group">
                            <div>
                                <img src="../img/portafolio/<?php echo $fila['port_img']; ?>" alt="">
                            </div>
                            <label for="port_img">Imagen</label>
                            <input type="file" class="form-control" name="port_img" id="port_img">
                        </div>
                        <div class="form-group">
                            <label for="port_contenido">Contenido</label>
                            <textarea name="port_contenido" id="port_contenido" cols="30" rows="5" class="form-control"><?php echo $fila['port_contenido']; ?></textarea>
                        </div>
                        <div class="form-group">
                            <label for="port_status">Estado</label>
                            <select name="port_status" id="port_status" class="form-control">
                                <option value="<?php echo $fila['port_status']; ?>"><?php echo $fila['port_status']; ?></option>
                                <?php mostrar_status_options($fila['port_status']); ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Editar" name="editar" class="btn btn-success">
                        </div>
                    </form>
                    <?php post_portafolio_edit($fila['port_id'], $fila['port_img']); ?>
                </div>
            </div>
        </div>
    </div>
</div>