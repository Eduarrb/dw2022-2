<?php $fila = get_header(); ?>

<header class="headerPort">
    <nav class="headerPort__nav bg-port">
        <div class="headerPort__nav__contenedor contenedor">
            <a href="./" class="headerPort__nav__contenedor--logo"><?php echo $fila['hea_logo_name']; ?></a>
            <ul class="headerPort__nav__contenedor__menu">
                <li class="headerPort__nav__contenedor__menu__item">
                    <a href="#" class="headerPort__nav__contenedor__menu__item--link">servicios</a>
                </li>
                <li class="headerPort__nav__contenedor__menu__item">
                    <a href="#" class="headerPort__nav__contenedor__menu__item--link">portafolio</a>
                </li>
                <li class="headerPort__nav__contenedor__menu__item">
                    <a href="#" class="headerPort__nav__contenedor__menu__item--link">about</a>
                </li>
                <li class="headerPort__nav__contenedor__menu__item">
                    <a href="#" class="headerPort__nav__contenedor__menu__item--link">equipo</a>
                </li>
                <li class="headerPort__nav__contenedor__menu__item">
                    <a href="#" class="headerPort__nav__contenedor__menu__item--link">contacto</a>
                </li>
                <?php 
                    if(isset($_SESSION['user_rol']) && $_SESSION['user_rol'] == 'admin'){
                        ?>
                            <li class="headerPort__nav__contenedor__menu__item">
                                <a href="admin" class="headerPort__nav__contenedor__menu__item--link">admin</a>
                            </li>
                    <?php }
                ?>
            </ul>
            <div class="headerPort__nav__contenedor--btn">
                menu <i class="fa-solid fa-bars"></i>
            </div>
        </div>
    </nav>
</header>