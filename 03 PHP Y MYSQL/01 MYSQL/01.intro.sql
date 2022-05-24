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