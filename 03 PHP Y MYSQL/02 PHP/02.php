<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!-- este es un comentario de html -->
    <?php
        // este es un comentario de una sola linea
        /* 
            este es un comentario de varias lineas de codigo
        */

        // ⚡⚡ VARIABLES
        $nombre = 'Eduardo Ninja Arroyo';
        echo $nombre;
        $num = 10;
        $decimal = 2.2;
        $bool = true;
        echo $bool;
    ?>

    <section>
        <?php
            echo $nombre . $num;
            echo '<br>';
            echo $nombre + $num;
        ?>
    </section>
</body>
</html>