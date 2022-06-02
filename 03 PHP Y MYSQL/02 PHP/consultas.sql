SELECT 
    a.peli_img,
    a.peli_nombre,
    a.peli_fecha_estreno,
    CONCAT(b.dire_nombres, ' ', b.dire_apellidos) AS director,
    a.peli_restricciones
    FROM peliculas a
        LEFT JOIN directores b ON a.peli_dire_id = b.dire_id;

ALTER TABLE peliculas ADD COLUMN peli_img TEXT AFTER peli_nombre;