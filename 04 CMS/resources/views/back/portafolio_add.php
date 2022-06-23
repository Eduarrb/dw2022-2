<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">AGREGAR ITEM</h1>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-body">
                    <form method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="port_titulo">Título</label>
                            <input type="text" class="form-control" name="port_titulo" id="port_titulo">
                        </div>
                        <div class="form-group">
                            <label for="port_subtitulo">Subtítulo</label>
                            <input type="text" class="form-control" name="port_subtitulo" id="port_subtitulo">
                        </div>
                        <div class="form-group">
                            <label for="port_img">Imagen</label>
                            <input type="file" class="form-control" name="port_img" id="port_img">
                        </div>
                        <div class="form-group">
                            <label for="port_contenido">Contenido</label>
                            <textarea name="port_contenido" id="port_contenido" cols="30" rows="5" class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="port_status">Estado</label>
                            <select name="port_status" id="port_status" class="form-control">
                                <option value="" selected disabled>Escoge una opción</option>
                                <option value="publicado">publicado</option>
                                <option value="pendiente">pendiente</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Guardar" name="guardar" class="btn btn-success">
                        </div>
                    </form>
                    <?php post_portafolio_back(); ?>
                </div>
            </div>
        </div>
    </div>
</div>