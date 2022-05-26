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