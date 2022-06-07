<?php include "conexion.php"; ?>
<?php ob_start(); ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>APP CRUD</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/css/bootstrap.min.css" integrity="sha512-T584yQ/tdRR5QwOpfvDfVQUidzfgc2339Lc8uBDtcp/wYu80d7jwBgAxbyMh0a9YM9F8N3tdErpFI8iaGx6x5g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <h1 class="text-center pt-5 pb-5 bg-primary text-white">Bienvenidos(as) a Pelicomic</h1>
    <section class="container">
        <div class="row">
            <a href="./" class="btn btn-info">Regresar</a>
        </div>
        <div class="row justify-content-center">
            <h4 class="text-center col-md-12">Ingresa los datos de la pelicula</h4>
            <?php
                if(isset($_GET['id'])){
                    $peli_id = $_GET['id'];
                    $query = "SELECT * FROM peliculas WHERE peli_id = {$peli_id}";
                    $queryRes = mysqli_query($conexion, $query);
                    // print_r($queryRes);
                    $fila = mysqli_fetch_array($queryRes);
                    // print_r($fila);
                }
            ?>
            <form class="col-md-6 mt-4 pb-5" method="post">
                <div class="form-group">
                    <label for="peli_nombre">Nombre de la pelicula</label>
                    <input type="text" class="form-control" id="peli_nombre" name="peli_nombre" value="<?php echo $fila['peli_nombre']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_genero">Género</label>
                    <input type="text" class="form-control" id="peli_genero" name="peli_genero" value="<?php echo $fila['peli_genero']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_fecha_estreno">Fecha estreno</label>
                    <input type="date" class="form-control" id="peli_fecha_estreno" name="peli_fecha_estreno" value="<?php echo $fila['peli_fecha_estreno']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_restricciones">Restricciones</label>
                    <input type="text" class="form-control" id="peli_restricciones" name="peli_restricciones" value="<?php echo $fila['peli_restricciones']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_img">IMG URL</label>
                    <input type="text" class="form-control" id="peli_img" name="peli_img" value="<?php echo $fila['peli_img']; ?>">
                </div>
                <div class="form-group">
                    <label for="peli_dire_id">Director</label>
                    <select name="peli_dire_id" id="peli_dire_id" class="form-control">
                        <!-- <option value="1">Jon Wants</option> -->
                        <!-- <option value="" disabled selected>Seleccione un director</option> -->
                        <?php
                            $queryDire = "SELECT * FROM directores";
                            $queryDireRes = mysqli_query($conexion, $queryDire);
                            // if(fila['peli_dire_id'] == ''){

                            // } else {

                            // }
                            while($filaDire = mysqli_fetch_array($queryDireRes)){
                                $dire_id = $filaDire['dire_id'];
                                $director = $filaDire['dire_nombres'] . " " . $filaDire['dire_apellidos'];
                                if($dire_id == $fila['peli_dire_id']){
                                    ?>
                                        <option value="<?php echo $dire_id; ?>" selected><?php echo $director; ?></option>
                                <?php }
                                else {
                                    ?>
                                        <option value="<?php echo $dire_id; ?>"><?php echo $director; ?></option>
                                <?php }
                            }
                        ?>
                    </select>
                    <?php //print_r($queryDireRes); ?>
                </div>
                <div class="form-group">
                    <input type="submit" value="Editar" class="btn btn-primary" name="editar">
                </div>
            </form>
            <?php 
                if(isset($_POST['editar'])){
                    // echo 'funciona';
                    $peli_nombre = $_POST['peli_nombre'];
                    $peli_genero = $_POST['peli_genero'];
                    $peli_fecha_estreno = $_POST['peli_fecha_estreno'];
                    $peli_restricciones = $_POST['peli_restricciones'];
                    $peli_img = $_POST['peli_img'];
                    $peli_dire_id = $_POST['peli_dire_id'];
                    
                    $queryUpdate = "UPDATE peliculas SET peli_nombre = '{$peli_nombre}', peli_genero = '{$peli_genero}', peli_fecha_estreno = '{$peli_fecha_estreno}', peli_restricciones = '{$peli_restricciones}', peli_img = '{$peli_img}', peli_dire_id = {$peli_dire_id} WHERE peli_id = {$peli_id}";
                    mysqli_query($conexion, $queryUpdate);
                    header("Location: ./");
                }
            ?>
        </div>
    </section>
</body>
</html>