<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">PORTAFOLIO</h1>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card shadow mb-3">
                <div class="card-body">
                    <a href="index.php?portafolio_add" class="btn btn-primary">
                    <i class="fas fa-plus"></i> Agregar item
                    </a>
                </div>
            </div>
            <?php mostrar_msj(); ?>
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="text-primary mb-0">Lista de items publicados</h6>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Título</th>
                                <th>Subtitulo</th>
                                <th>Imagen</th>
                                <th>contenido</th>
                                <th>fecha</th>
                                <th>Estado</th>
                                <th>Vistas</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php get_portafolios_back(); ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>