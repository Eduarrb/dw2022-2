CREATE TABLE personajes (
    per_act_id INT NOT NULL,
    per_peli_id INT NOT NULL,
    per_nombre VARCHAR(100) NOT NULL
);

INSERT INTO personajes (per_act_id, per_peli_id, per_nombre) VALUES
    (1, 1, 'spiderman'),
    (2, 1, 'MJ'),
    (3, 2, 'Dr. Strange'),
    (4, 2, 'La bruja Escarlata'),
    (7, 6, 'Jack Torrance'),
    (8, 6, 'Wendy Torrance'),
    (9, 7, 'Jack'),
    (10, 7, 'Rose');

-- ⚡⚡ RELACIONES 2 TABLAS PERSONAJES -PELICULAS || PERSONAJES - ACTORES
SELECT *
    FROM peliculas, personajes
        WHERE peliculas.peli_id = personajes.per_peli_id

SELECT *
    FROM personajes, actores
        WHERE personajes.per_act_id = actores.act_id

-- NOMBRE DE LA PELICULA, NOMBRE DE PERSONAJE, FECHA DE ESTRENO, LA RESTRICCION QUE SEA = PG-13
SELECT
    peli_nombre,
    per_nombre,
    peli_fecha_estreno,
    peli_restricciones
    FROM peliculas, personajes
        WHERE peliculas.peli_id = personajes.per_peli_id
            AND peli_restricciones = 'PG-13'

-- ⚡⚡ 3 TABLAS

SELECT *
    FROM peliculas, personajes, actores
        WHERE peliculas.peli_id = personajes.per_peli_id 
            AND personajes.per_act_id = actores.act_id

-- (NOMBRES Y APELLIDOS), PERSONAJE, PELICULA, FECHA DE ESTRENO, RESTRICCIONES ORDENADAS DE FORMA DESCENDENTE

SELECT
    CONCAT(act_nombres, " ", act_apellidos) AS actor,
    per_nombre,
    peli_fecha_estreno,
    peli_restricciones
    FROM peliculas, personajes, actores
        WHERE peliculas.peli_id = personajes.per_peli_id 
            AND personajes.per_act_id = actores.act_id
        ORDER BY peli_restricciones DESC;

CREATE TABLE directores (
    dire_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dire_nombres VARCHAR(50) NOT NULL,
    dire_apellidos VARCHAR(50) NOT NULL
);

INSERT INTO directores (dire_nombres, dire_apellidos) VALUES
    ('Jon', 'Wats'),
    ('Sam', 'Raimi'),
    ('Lana', 'Wachowski'),
    ('Christopher', 'Nolan'),
    ('Stanly', 'Kubric'),
    ('James', 'cameron');

ALTER TABLE peliculas ADD COLUMN peli_dire_id INT;

UPDATE peliculas SET peli_dire_id = 1 WHERE peli_id = 1;
UPDATE peliculas SET peli_dire_id = 2 WHERE peli_id = 2;
UPDATE peliculas SET peli_dire_id = 3 WHERE peli_id = 3;
UPDATE peliculas SET peli_dire_id = 4 WHERE peli_id = 5;
UPDATE peliculas SET peli_dire_id = 5 WHERE peli_id = 6;
UPDATE peliculas SET peli_dire_id = 6 WHERE peli_id = 7;

SELECT *
    FROM peliculas, personajes
        WHERE peli_id = per_peli_id

-- personajes 
-- id, nombre, cod

-- peliculas
-- id, nombre, cod

SELECT *
    FROM peliculas, personajes
        WHERE peliculas.id = personajes.id

-- ⚡⚡ ALIAS DE TABLAS

SELECT
    a.peli_nombre,
    b.dire_nombres
    FROM peliculas a, directores b
            WHERE a.peli_dire_id = b.dire_id

-- NOMBRE DE LA PELICULA | DIRECTOR (NOMBRES Y APELLIDOS UN SOLO CAMPO) | ACTORES (NOMBRES Y APELLIDOS UN SOLO CAMPO) | PERSONAJE

SELECT
    a.peli_nombre,
    CONCAT(d.dire_nombres, " ", d.dire_apellidos) AS director,
    CONCAT(c.act_nombres, " ", c.act_apellidos) AS actor,
    b.per_nombre
    FROM peliculas a, personajes b, actores c, directores d
        WHERE a.peli_id = b.per_peli_id
            AND a.peli_dire_id = d.dire_id
            AND b.per_act_id = c.act_id