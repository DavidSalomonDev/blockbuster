/**
 * Este script SQL crea las tablas en una base de datos para gestionar un sistema de videoclub. Las tablas incluyen
 * información sobre socios, directores, actores, películas, cintas, préstamos, devoluciones y lista de espera. Cada tabla
 * se define con sus columnas y restricciones específicas. La estructura de la base de datos permite llevar un registro
 * completo de socios, películas, cintas disponibles, préstamos, devoluciones y solicitudes en lista de espera. Esta parte
 * del script se encarga de crear las tablas en la base de datos sin establecer aún las relaciones entre ellas.
 */

CREATE TABLE SOCIO
(
    ID_SOCIO  SERIAL       NOT NULL,
    NOMBRE    VARCHAR(255) NOT NULL,
    DIRECCION VARCHAR(255) NOT NULL,
    TELEFONO  VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID_SOCIO)
);

CREATE TABLE DIRECTOR
(
    ID_DIRECTOR SERIAL       NOT NULL,
    NOMBRE      VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID_DIRECTOR)
);

CREATE TABLE ACTOR
(
    ID_ACTOR SERIAL       NOT NULL,
    NOMBRE   VARCHAR(255) NOT NULL,
    PRIMARY KEY (ID_ACTOR)
);

CREATE TABLE PELICULA
(
    ID_PELICULA SERIAL       NOT NULL,
    TITULO      VARCHAR(255) NOT NULL,
    GENERO      GENERO_PELICULA,
    DIRECTOR    INT,
    ACTORES     INT[],
    ID_CINTA    INT,
    PRIMARY KEY (ID_PELICULA)
);

CREATE TABLE CINTAS
(
    ID_CINTA          SERIAL NOT NULL,
    ID_PELICULA       INT    NOT NULL,
    CANTIDAD          INT    NOT NULL,
    ULTIMA_DEVOLUCION DATE,
    ULTIMO_PRESTAMO   DATE,
    PRIMARY KEY (ID_CINTA)
);

CREATE TABLE PRESTAMOS
(
    ID_PRESTAMO SERIAL NOT NULL,
    ID_SOCIO    INT    NOT NULL,
    ID_CINTA    INT    NOT NULL,
    FECHA       DATE   NOT NULL,
    PRIMARY KEY (ID_PRESTAMO)
);

CREATE TABLE DEVOLUCIONES
(
    ID_DEVOLUCION SERIAL NOT NULL,
    ID_PRESTAMO   INT    NOT NULL,
    FECHA         DATE   NOT NULL,
    PRIMARY KEY (ID_DEVOLUCION)
);

CREATE TABLE LISTA_ESPERA
(
    ID_LISTA_ESPERA SERIAL NOT NULL,
    ID_SOCIO        INT    NOT NULL,
    ID_PELICULA     INT    NOT NULL,
    FECHA_SOLICITUD DATE   NOT NULL,
    PRIMARY KEY (ID_LISTA_ESPERA)
);
