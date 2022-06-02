<?php include "conexion.php"; ?>
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
    <!-- 
        CRUD
        C-> CREATE
        R-> READ
        U -> UPDATE
        D-> DELETE
     -->
    <h1 class="text-center pt-5 pb-5 bg-primary text-white">Bienvenidos(as) a Pelicomic</h1>
    <section class="container">
        <div class="row p-4">
            <a href="#" class="btn btn-success">Cargar Pelicula</a>
            <a href="#" class="btn btn-info ml-2">Directores</a>
        </div>
        <div class="row">
            <?php
                $query = "SELECT 
                a.peli_img,
                a.peli_nombre,
                a.peli_fecha_estreno,
                CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director,
                a.peli_restricciones
                FROM peliculas a
                    LEFT JOIN directores b ON a.peli_dire_id = b.dire_id";
                
                $query_resultado = mysqli_query($conexion, $query);
                // print_r($query_resultado);
                if(!$query_resultado){
                    die('Fallo en la conexion ' . mysqli_error($conexion));
                }

                $array1 = [1, 234324, 'casa', true, [121, 'ps5']];
                // print_r($array1);
                // echo "<br>";

                // ⚡⚡ ARRAY ASSOCIATIVOS ⚡⚡
                // key - value pairs
                $array2 = ["nombre" => "Juan", "apellido" => "Casas"];
                // print_r($array2);
                // echo $array2["nombre"];
                // echo false;
                while($fila = mysqli_fetch_array($query_resultado)){
                    // print_r($fila);
                    // echo "<h1>{$fila['peli_nombre']}</h1>";
                    // echo "<br>";
                    ?>
                        <div class="col-md-3 mb-4">
                            <img src="<?php echo $fila['peli_img']; ?>" alt="spiderman" width="100%">
                            <h4 class="text-info"><?php echo $fila['peli_nombre']; ?></h4>
                            <div>
                                <strong>Fecha: </strong><?php echo $fila['peli_fecha_estreno']; ?>
                            </div>
                            <div>
                                <strong>Director: </strong><?php echo $fila['director'] ?>
                            </div>
                            <div>
                                <strong>Rating: </strong><?php echo $fila["peli_restricciones"]; ?>
                            </div>
                            <div class="mt-1">
                                <a href="#" class="btn btn-success">editar</a>
                                <a href="#" class="btn btn-danger">borrar</a>
                            </div>
                        </div>
                <?php }

            ?>
            <!-- <div class="col-md-3 mb-4">
                <img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/poster-spider-man-no-way-home-1637136793.jpg" alt="spiderman" width="100%">
                <h4 class="text-info">Spiderman: No way home</h4>
                <div>
                    <strong>Fecha: </strong>2021-12-12
                </div>
                <div>
                    <strong>Director: </strong>Jon Wats
                </div>
                <div>
                    <strong>Rating: </strong>PG-13
                </div>
                <div class="mt-1">
                    <a href="#" class="btn btn-success">editar</a>
                    <a href="#" class="btn btn-danger">borrar</a>
                </div>
            </div> -->
            
        </div>
    </section>
</body>
</html>