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

-- Descripción de la tabla SOCIO
COMMENT ON TABLE SOCIO IS 'Información de los socios del videoclub, incluyendo nombre, dirección y teléfono.';

-- Descripción de la tabla DIRECTOR
COMMENT ON TABLE DIRECTOR IS 'Información sobre directores de películas, con sus respectivos nombres.';

-- Descripción de la tabla ACTOR
COMMENT ON TABLE ACTOR IS 'Información sobre actores de películas, con sus respectivos nombres.';

-- Descripción de la tabla PELICULA
COMMENT ON TABLE PELICULA IS 'Información detallada sobre películas, incluyendo título, género y referencia a la cinta asociada.';

-- Descripción de la tabla CINTAS
COMMENT ON TABLE CINTAS IS 'Registro de cintas asociadas a películas, con información sobre cantidad disponible y fechas de devolución y préstamo.';

-- Descripción de la tabla PRESTAMOS
COMMENT ON TABLE PRESTAMOS IS 'Registro de préstamos de cintas a socios, con detalles sobre la fecha del préstamo.';

-- Descripción de la tabla DEVOLUCIONES
COMMENT ON TABLE DEVOLUCIONES IS 'Registro de devoluciones de cintas, con detalles sobre la fecha de devolución.';

-- Descripción de la tabla LISTA_ESPERA
COMMENT ON TABLE LISTA_ESPERA IS 'Registro de solicitudes de cintas en lista de espera por parte de los socios.';

-- Descripción de las columnas de la tabla SOCIO
COMMENT ON COLUMN SOCIO.ID_SOCIO IS 'Identificador único del socio.';
COMMENT ON COLUMN SOCIO.NOMBRE IS 'Nombre del socio.';
COMMENT ON COLUMN SOCIO.DIRECCION IS 'Dirección del socio.';
COMMENT ON COLUMN SOCIO.TELEFONO IS 'Número de teléfono del socio.';

-- Descripción de las columnas de la tabla DIRECTOR
COMMENT ON COLUMN DIRECTOR.ID_DIRECTOR IS 'Identificador único del director.';
COMMENT ON COLUMN DIRECTOR.NOMBRE IS 'Nombre del director.';

-- Descripción de las columnas de la tabla ACTOR
COMMENT ON COLUMN ACTOR.ID_ACTOR IS 'Identificador único del actor.';
COMMENT ON COLUMN ACTOR.NOMBRE IS 'Nombre del actor.';

-- Descripción de las columnas de la tabla PELICULA
COMMENT ON COLUMN PELICULA.ID_PELICULA IS 'Identificador único de la película.';
COMMENT ON COLUMN PELICULA.TITULO IS 'Título de la película.';
COMMENT ON COLUMN PELICULA.GENERO IS 'Género de la película (ver enum GENERO_PELICULA).';
COMMENT ON COLUMN PELICULA.ID_CINTA IS 'Referencia a la cinta asociada a la película.';

-- Descripción de las columnas de la tabla CINTAS
COMMENT ON COLUMN CINTAS.ID_CINTA IS 'Identificador único de la cinta.';
COMMENT ON COLUMN CINTAS.ID_PELICULA IS 'Referencia a la película asociada a la cinta.';
COMMENT ON COLUMN CINTAS.CANTIDAD IS 'Cantidad disponible de la cinta.';

-- Descripción de las columnas de la tabla PRESTAMOS
COMMENT ON COLUMN PRESTAMOS.ID_PRESTAMO IS 'Identificador único del préstamo.';
COMMENT ON COLUMN PRESTAMOS.ID_SOCIO IS 'Referencia al socio que realizó el préstamo.';
COMMENT ON COLUMN PRESTAMOS.ID_CINTA IS 'Referencia a la cinta prestada.';
COMMENT ON COLUMN PRESTAMOS.FECHA IS 'Fecha en que se realizó el préstamo.';

-- Descripción de las columnas de la tabla DEVOLUCIONES
COMMENT ON COLUMN DEVOLUCIONES.ID_DEVOLUCION IS 'Identificador único de la devolución.';
COMMENT ON COLUMN DEVOLUCIONES.ID_PRESTAMO IS 'Referencia al préstamo asociado a la devolución.';
COMMENT ON COLUMN DEVOLUCIONES.FECHA IS 'Fecha en que se realizó la devolución.';

-- Descripción de las columnas de la tabla LISTA_ESPERA
COMMENT ON COLUMN LISTA_ESPERA.ID_LISTA_ESPERA IS 'Identificador único de la solicitud en lista de espera.';
COMMENT ON COLUMN LISTA_ESPERA.ID_SOCIO IS 'Referencia al socio que realizó la solicitud.';
COMMENT ON COLUMN LISTA_ESPERA.ID_PELICULA IS 'Referencia a la película solicitada.';
COMMENT ON COLUMN LISTA_ESPERA.FECHA_SOLICITUD IS 'Fecha en que se realizó la solicitud en lista de espera.';
