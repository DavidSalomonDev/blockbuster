-- Relación de muchos a muchos entre PELICULA y ACTOR
CREATE TABLE PELICULA_ACTOR
(
    ID_PELICULA INT NOT NULL,
    ID_ACTOR    INT NOT NULL,
    PRIMARY KEY (ID_PELICULA, ID_ACTOR),
    FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA),
    FOREIGN KEY (ID_ACTOR) REFERENCES ACTOR (ID_ACTOR)
);

-- Relación de muchos a muchos entre PELICULA y DIRECTOR
CREATE TABLE DIRECTOR_PELICULA
(
    ID_PELICULA INT NOT NULL,
    ID_DIRECTOR INT NOT NULL,
    PRIMARY KEY (ID_PELICULA, ID_DIRECTOR),
    FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA),
    FOREIGN KEY (ID_DIRECTOR) REFERENCES DIRECTOR (ID_DIRECTOR)
);

-- Modificación en la relación de uno a muchos entre PELICULA y DIRECTOR
ALTER TABLE PELICULA
    ADD FOREIGN KEY (ID_DIRECTOR) REFERENCES DIRECTOR (ID_DIRECTOR);

-- Modificación en la relación entre CINTAS y PELICULA
ALTER TABLE CINTAS
    ADD FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA);

-- Resto de las relaciones
ALTER TABLE PRESTAMOS
    ADD FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO (ID_SOCIO),
    ADD FOREIGN KEY (ID_CINTA) REFERENCES CINTAS (ID_CINTA);

ALTER TABLE DEVOLUCIONES
    ADD FOREIGN KEY (ID_PRESTAMO) REFERENCES PRESTAMOS (ID_PRESTAMO);

ALTER TABLE LISTA_ESPERA
    ADD FOREIGN KEY (ID_SOCIO) REFERENCES SOCIO (ID_SOCIO),
    ADD FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA);
