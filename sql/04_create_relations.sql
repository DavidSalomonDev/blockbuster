
/**
 * En esta parte del script SQL, se agregan las restricciones de clave externa (FK) a las tablas ya creadas. Las llaves
 * foráneas se utilizan para establecer relaciones entre las tablas, lo que permite mantener la integridad referencial
 * en la base de datos. Se definen relaciones entre las tablas de socios, películas, cintas, préstamos, devoluciones y
 * lista de espera. Estas relaciones garantizan que los datos estén coherentes y permiten consultas y operaciones que
 * involucran múltiples tablas en la base de datos del videoclub.
 */

-- Relación de uno a muchos
CREATE TABLE PELICULA_ACTOR
(
    ID_PELICULA INT NOT NULL,
    ID_ACTOR    INT NOT NULL,
    PRIMARY KEY (ID_PELICULA, ID_ACTOR),
    FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA),
    FOREIGN KEY (ID_ACTOR) REFERENCES ACTOR (ID_ACTOR)
);

-- Eliminación de dependencias (2da forma normal)
-- Nueva tabla para DIRECTORES
CREATE TABLE DIRECTOR_PELICULA
(
    ID_PELICULA INT NOT NULL,
    ID_DIRECTOR INT NOT NULL,
    PRIMARY KEY (ID_PELICULA, ID_DIRECTOR),
    FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA),
    FOREIGN KEY (ID_DIRECTOR) REFERENCES DIRECTOR (ID_DIRECTOR)
);

-- Eliminar columnas de DIRECTOR y ACTORES de la tabla PELICULA
ALTER TABLE PELICULA
    DROP COLUMN DIRECTOR,
    DROP COLUMN ACTORES;

-- Eliminar dependencias transitivas
-- Nueva tabla para manejar información relacionada con las cintas
CREATE TABLE INFORMACION_CINTA
(
    ID_CINTA          INT NOT NULL,
    CANTIDAD          INT NOT NULL,
    ULTIMA_DEVOLUCION DATE,
    ULTIMO_PRESTAMO   DATE,
    PRIMARY KEY (ID_CINTA),
    FOREIGN KEY (ID_CINTA) REFERENCES CINTAS (ID_CINTA)
);

-- Eliminar columnas de ULTIMA_DEVOLUCION y ULTIMO_PRESTAMO de la tabla CINTAS
ALTER TABLE CINTAS
    DROP COLUMN ULTIMA_DEVOLUCION,
    DROP COLUMN ULTIMO_PRESTAMO;

ALTER TABLE PRESTAMOS
    ADD FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO (ID_SOCIO),
    ADD FOREIGN KEY (ID_CINTA) REFERENCES CINTAS (ID_CINTA);

ALTER TABLE DEVOLUCIONES
    ADD FOREIGN KEY (ID_PRESTAMO) REFERENCES PRESTAMOS (ID_PRESTAMO);

ALTER TABLE LISTA_ESPERA
    ADD FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO (ID_SOCIO),
    ADD FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA);
