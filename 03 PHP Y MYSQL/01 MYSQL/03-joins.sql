SELECT *
    FROM peliculas a, personajes b
        WHERE a.peli_id = b.per_peli_id

--------------------------------------------
-- ⚡⚡ INNER JOIN ⚡⚡
SELECT *
    FROM peliculas a
        INNER JOIN personajes b ON a.peli_id = b.per_peli_id

SELECT *
    FROM personajes a
        INNER JOIN actores b ON a.per_act_id = b.act_id

SELECT *
    FROM directores a
        INNER JOIN peliculas b ON a.dire_id = b.peli_dire_id


-- ⚡⚡ LEFT JOIN ⚡⚡
SELECT *
    FROM peliculas pe
        LEFT JOIN directores di ON pe.peli_dire_id = di.dire_id

SELECT *
    FROM actores a
        LEFT JOIN personajes b ON a.act_id = b.per_act_id

INSERT INTO personajes (per_nombre) VALUES
    ('Batman'),
    ('Superman'),
    ('Capitan america');

SELECT *
    FROM personajes a
        LEFT JOIN actores b ON a.per_act_id = b.act_id

SELECT *
    FROM personajes a
        RIGHT JOIN actores b ON a.per_act_id = b.act_id
