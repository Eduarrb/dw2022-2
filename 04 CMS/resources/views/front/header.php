<?php $fila = get_header(); ?>

<header class="header">
    <nav class="header__nav">
        <div class="header__nav__contenedor contenedor">
            <a href="#" class="header__nav__contenedor--logo"><?php echo $fila['hea_logo_name']; ?></a>
            <ul class="header__nav__contenedor__menu">
                <!-- li*5.header__nav__contenedor__menu__item>a.header__nav__contenedor__menu__item--link -->
                <li class="header__nav__contenedor__menu__item">
                    <a href="#" class="header__nav__contenedor__menu__item--link">servicios</a>
                </li>
                <li class="header__nav__contenedor__menu__item">
                    <a href="#" class="header__nav__contenedor__menu__item--link">portafolio</a>
                </li>
                <li class="header__nav__contenedor__menu__item">
                    <a href="#" class="header__nav__contenedor__menu__item--link">about</a>
                </li>
                <li class="header__nav__contenedor__menu__item">
                    <a href="#" class="header__nav__contenedor__menu__item--link">equipo</a>
                </li>
                <li class="header__nav__contenedor__menu__item">
                    <a href="#" class="header__nav__contenedor__menu__item--link">contacto</a>
                </li>
            </ul>
            <div class="header__nav__contenedor--btn">
                menu <i class="fa-solid fa-bars"></i>
            </div>
        </div>
    </nav>
    <div class="header__bienvenida">
        <div class="header__bienvenida__contenedor contenedor">
            <p class="header__bienvenida__contenedor--subtitulo">
                <?php echo $fila['hea_subtitulo']; ?>
            </p>
            <h2 class="header__bienvenida__contenedor--titulo mt-2 mb-5">
                <?php echo $fila['hea_titulo']; ?>
            </h2>
            <a href="#" class="btn btn-amarillo">dime más</a>
        </div>
    </div>
</header>