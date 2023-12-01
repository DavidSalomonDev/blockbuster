-- Creación de la partición por el campo GENERO en la tabla PELICULA
CREATE TABLE PELICULA_PARTICIONADA
    PARTITION BY LIST (GENERO)
(
    PARTITION accion_part VALUES ('Accion'),
    PARTITION comedia_part VALUES ('Comedia'),
    PARTITION drama_part VALUES ('Drama'),
    PARTITION biografia_part VALUES ('Biografia'),
    PARTITION otros_part VALUES (DEFAULT)
    )
AS
SELECT * FROM PELICULA;

-- Eliminación de la tabla original PELICULA (opcional, dependiendo de tus necesidades)
DROP TABLE PELICULA;

-- Renombrar la tabla particionada a PELICULA
ALTER TABLE PELICULA_PARTICIONADA RENAME TO PELICULA;