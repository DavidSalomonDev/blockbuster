/**
 * Esta sentencia SQL crea la tabla "socio" en la base de datos. La tabla "socio" almacena información
 * sobre los socios del vídeo club, incluyendo un identificador único (id_socio), nombre, dirección y
 * número de teléfono.
 *
 * Estructura de la tabla:
 * - "id_socio" (TEXT): Identificador único del socio.
 * - "nombre" (VARCHAR(255)): Nombre del socio.
 * - "direccion" (VARCHAR(255)): Dirección del socio.
 * - "telefono" (VARCHAR(255)): Número de teléfono del socio.
 *
 * La columna "id_socio" se define como la clave primaria (PRIMARY KEY) para garantizar la unicidad de los
 * identificadores de los socios en la tabla.
 *
 * Esta tabla es esencial para llevar un registro de los socios del vídeo club y su información personal.
 */
CREATE TABLE public.socio
(
    id_socio  TEXT         NOT NULL,
    nombre    VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono  VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_socio)
);

-- Creación de la tabla Peliculas
CREATE TABLE public.pelicula
(
    id_pelicula TEXT         NOT NULL,
    titulo      VARCHAR(255) NOT NULL,
    genero      genero_pelicula,
    director    VARCHAR(100),
    actores     VARCHAR(255)[],
    PRIMARY KEY (id_pelicula)
);


-- Creación de la tabla Prestamos
CREATE TABLE Prestamos
(
    id           SERIAL PRIMARY KEY,
    id_socio     INT REFERENCES Socios (id),
    id_pelicula  INT REFERENCES Peliculas (id),
    fecha        DATE,
    numero_cinta VARCHAR(20) NOT NULL UNIQUE
);
-- Creación de la tabla Devoluciones
CREATE TABLE Devoluciones
(
    id               SERIAL PRIMARY KEY,
    id_pelicula      INT REFERENCES Peliculas (id),
    fecha_devolucion DATE
);
-- Creación de la tabla ListaEspera
CREATE TABLE ListaEspera
(
    id              SERIAL PRIMARY KEY,
    id_socio        INT REFERENCES Socios (id),
    titulo_pelicula VARCHAR(255) NOT NULL
);