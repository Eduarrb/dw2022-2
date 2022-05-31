ALTER TABLE peliculas CHANGE COLUMN peli_dire_id peli_dire_id INT(10) UNSIGNED

-- 🔥🔥 RESTRICCIONES
-- RESTRICT
    -- por defecto, impide realizar modificaciones que atenten la integridad refrencial
    -- de las tablas, no permite borrar.
-- CASCADE
    -- Al actualizar o borrar los datos referenciados, tambien se actualiza o se borra los datos de la 
    --  tabla dependiente.
-- SET NULL
    -- se establece campos nulos "NULL" a la tabla dependiente al momento de cambiar o borrar
-- NO ACTION: NO HACE

ALTER TABLE peliculas
    ADD CONSTRAINT fk_direId FOREIGN KEY (peli_dire_id)
    REFERENCES directores (dire_id)
    ON DELETE RESTRICT ON UPDATE RESTRICT

DELETE FROM directores WHERE dire_id = 6 -- no permite hacer cambios desde la tabla referenciada

DELETE FROM peliculas WHERE peli_id = 8 -- la tabla dependiente si se puede hacer cambios

ALTER TABLE peliculas
    DROP CONSTRAINT fk_direId

ALTER TABLE peliculas
    ADD CONSTRAINT fk_direId FOREIGN KEY (peli_dire_id)
    REFERENCES directores (dire_id)
    ON DELETE CASCADE ON UPDATE CASCADE

DELETE FROM directores WHERE dire_id = 6