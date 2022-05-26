-- mysql -u root 
-- mysql -u root -p

-- ⚡⚡ COMANDOS INICIALES ⚡⚡
-- mysql no es key sensitive

show databases;

SHOW DATABASES;

CREATE DATABASE dw2022_2;

DROP DATABASE dw2022_2;

USE dw2022_2;

-- ⚡⚡ CREACION DE TABLAS

CREATE TABLE personas (
    per_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    per_nombres VARCHAR(100) NOT NULL,
    per_apellidos VARCHAR(100) NOT NULL,
    per_genero CHAR(1) NOT NULL,
    per_dni CHAR(8) UNIQUE NOT NULL,
    per_fecha_nac DATE NOT NULL
);

DROP TABLE persona;

DESC persona;
ALTER TABLE persona ADD COLUMN per_genero VARCHAR(25);

ALTER TABLE persona CHANGE COLUMN per_genero per_genero VARCHAR(5) NOT NULL;

ALTER TABLE persona DROP COLUMN per_genero;

ALTER TABLE persona ADD COLUMN per_genero CHAR(5) NOT NULL AFTER per_apellidos;

-- ⚡⚡ INSERTAR DATOS

INSERT INTO personas (per_fecha_nac, per_nombres, per_apellidos, per_genero, per_dni) VALUES
    ('2000-12-12', 'Juan', 'Quispe', 'M', '12345678');

SELECT * FROM personas;

INSERT INTO personas (per_nombres, per_apellidos, per_genero, per_dni, per_fecha_nac) VALUES
    ('Sofia', 'Rodriguez', 'F', '12345679', '2019-10-25');

INSERT INTO personas (per_nombres, per_apellidos, per_genero, per_dni, per_fecha_nac) VALUES
    ('José', 'Tapia', 'M', '12345680', '2002-05-03'),
    ('Malena', 'Ruiz', 'F', '12345681', '1992-10-23');

-- MUCHO CUIDADO CON ESTE QUERY 💥💥💥😭😭
DELETE FROM personas WHERE per_id = 6;

TRUNCATE personas;
------------------------------------------------------------------------
CREATE TABLE peliculas (
    peli_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    peli_nombre VARCHAR(255) NOT NULL COMMENT 'aqui va el nombre de la  pelicula',
    peli_genero VARCHAR(100) NOT NULL,
    peli_fecha_estreno DATE NOT NULL,
    peli_restricciones VARCHAR(20) NOT NULL COMMENT 'ejem PG = publico en general'
);

INSERT INTO peliculas (peli_nombre, peli_genero, peli_fecha_estreno, peli_restricciones) VALUES
    ("Spiderman: No way home", 'ciencia ficción', '2021-12-15', 'PG-13'),
    ('Dr. Strange: En el multiverso de la locura', 'acción', '2022-05-05', 'PG-16'),
    ('Matrix', 'ciencia ficcion', '1999-12-24', 'PG-13'),
    ('Avenger', 'accion', '2012-05-14', 'PG-13'),
    ('Interestellar', 'Drama', '2014-10-08', 'PG-18'),
    ('El resplandor', 'terror', '1980-10-09', 'PG-18'),
    ('Titanic', 'Drama romantico', '1997-07-07', 'PG'),
    ('El codigo enigma', 'bélica', '2017-08-19', 'PG-16');

SELECT * FROM peliculas;

-- WHERE ⚡⚡
SELECT * FROM peliculas WHERE peli_restricciones = "pg-18";

SELECT * FROM peliculas WHERE peli_id = 6;

SELECT * FROM peliculas WHERE peli_genero = 'drama';

----------------------------------------------------------
-- ORDER BY ⚡⚡
SELECT * FROM peliculas ORDER BY peli_id DESC;

SELECT * FROM peliculas ORDER BY peli_nombre DESC;

SELECT * FROM peliculas WHERE peli_restricciones = 'PG-13' ORDER BY peli_nombre;

-------------------------------------------------------------------------------
CREATE TABLE actores (
    act_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    act_nombres VARCHAR(100) NOT NULL,
    act_apellidos VARCHAR(100) NOT NULL
);

INSERT INTO actores (act_nombres, act_apellidos) VALUES
    ('Tom', 'Holland'),
    ('Zendaya', 'Colleman'),
    ('Benedict', 'Cumberbach'),
    ('Elizabeth', 'Olsen'),
    ('keanu', 'Reeves'),
    ('Carrie-Anne', 'Moss'),
    ('Jack', 'Nicolson'),
    ('Shelly', 'Duvall'),
    ('Leonardo', 'DiCaprio'),
    ('Kate', 'Winslet');

-- UNA CONSULTA DONDE ME MUESTRE SOLO UNA COLUMNA CON LOS NOMBRES Y APELLIDOS JUNTOS Y EL RESTO DE COLUMNAS CON NORMALIDAD

SELECT CONCAT(act_nombres, act_apellidos) FROM actores;

SELECT CONCAT(act_nombres, " ", act_apellidos) FROM actores;

SELECT CONCAT(act_nombres, " ", act_apellidos) FROM actores ORDER BY act_apellidos;

SELECT CONCAT(act_nombres, " ", act_apellidos) FROM actores ORDER BY act_apellidos;

-- ALIAS -> AS ⚡⚡
SELECT CONCAT(act_nombres, " ", act_apellidos) AS actor FROM actores ORDER BY act_apellidos;

SELECT CONCAT(act_nombres, " ", act_apellidos) AS actor_de_reparto FROM actores ORDER BY act_apellidos;

-- COMO RESULTADO ME DEVUELVAS EL POSIBLE CORREO COORPORATIVO DEL ACTOR
-- EDUARDO ARROYO -> earroyo@continental.edu.pe

SELECT SUBSTRING(act_nombres, 2, 2) FROM actores;

SELECT CONCAT(SUBSTRING(act_nombres, 1, 1), act_apellidos, '@continental.edu.pe') FROM actores;

SELECT LOWER(CONCAT(SUBSTRING(act_nombres, 1, 1), act_apellidos, '@continental.edu.pe')) AS correo FROM actores;

-- GROUP BY ⚡⚡

SELECT COUNT(*) AS canti, peli_genero FROM peliculas GROUP BY peli_genero;

-- DEVUELTA LA CANTIDAD DE PELICULAS QUE SOLO SEAN DE ACCION
-- DEVUELTA LA CANTIDAD DE PELICULAS QUE SOLO SEAN PG-16

SELECT COUNT(*) AS canti, peli_genero FROM peliculas WHERE peli_genero = 'acción' GROUP BY peli_genero
SELECT COUNT(*) AS canti, peli_restricciones FROM peliculas WHERE peli_restricciones = 'pg-16' GROUP BY peli_restricciones
SELECT COUNT(*) AS canti, peli_restricciones FROM peliculas GROUP BY peli_restricciones

-- ⚡⚡ COMODINES
SELECT * FROM peliculas WHERE peli_nombre LIKE "e%"

SELECT * FROM peliculas WHERE peli_nombre LIKE "%r"

SELECT * FROM peliculas WHERE peli_nombre LIKE "%r%"


