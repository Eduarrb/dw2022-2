CREATE DATABASE agencia;

CREATE TABLE header (
    hea_logo_name VARCHAR(50) NOT NULL,
    hea_subtitulo VARCHAR(100) NOT NULL,
    hea_titulo VARCHAR(100) NOT NULL
);

INSERT INTO header (hea_logo_name, hea_subtitulo, hea_titulo) VALUES ('Frank Montes', 'Bienvenido(a) a mi página', 'Blog de información');

TRUNCATE header;

CREATE TABLE usuarios (
    user_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_nombres VARCHAR(255) NOT NULL,
    user_apellidos VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_img TEXT,
    user_pass VARCHAR(255) NOT NULL,
    user_token TEXT,
    user_status TINYINT DEFAULT 0 COMMENT 'status 0: ususario no activado, status 1: usuario activado',
    user_rol VARCHAR(50) NOT NULL DEFAULT 'suscriptor'
);

INSERT INTO usuarios (user_nombres, user_apellidos, user_email, user_pass) VALUES ('Eduardo', 'Arroyo', 'eduardo@gmail.com', '123');

CREATE TABLE portafolio (
    port_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    port_titulo VARCHAR(20) NOT NULL,
    port_subtitulo VARCHAR(20) NOT NULL,
    port_img TEXT NOT NULL,
    port_contenido TEXT NOT NULL,
    port_fecha DATE NOT NULL,
    port_user_id INT NOT NULL,
    port_status VARCHAR(20),
    port_vistas INT DEFAULT 0
);

INSERT INTO portafolio (port_titulo, port_subtitulo, port_img, port_contenido, port_fecha, port_user_id, port_status) VALUES ('Threads', 'Illustration', '01-thumbnail.jpg', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Assumenda eius optio repellendus quos saepe maxime ducimus quasi placeat earum sed odit, minus consequatur dolorum tenetur. Doloremque vitae expedita voluptates nulla!', '2022-06-20', 2, 'publicado');