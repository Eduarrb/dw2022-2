CREATE DATABASE agencia;

CREATE TABLE header (
    hea_logo_name VARCHAR(50) NOT NULL,
    hea_subtitulo VARCHAR(100) NOT NULL,
    hea_titulo VARCHAR(100) NOT NULL
);

INSERT INTO header (hea_logo_name, hea_subtitulo, hea_titulo) VALUES ('Frank Montes', 'Bienvenido(a) a mi página', 'Blog de información');