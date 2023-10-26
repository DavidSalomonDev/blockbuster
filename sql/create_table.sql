-- Creación de la tabla Peliculas
CREATE TABLE Peliculas (
    id serial PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    genero VARCHAR(50),
    director VARCHAR(100),
    actores VARCHAR(255) []
);
-- Creación de la tabla Socios
CREATE TABLE Socios (
    id serial PRIMARY KEY,
    carne VARCHAR(20) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    direccion TEXT,
    telefono VARCHAR(15),
    directores_favoritos VARCHAR(255) []
);
-- Creación de la tabla Prestamos
CREATE TABLE Prestamos (
    id serial PRIMARY KEY,
    id_socio INT REFERENCES Socios(id),
    id_pelicula INT REFERENCES Peliculas(id),
    fecha DATE,
    numero_cinta VARCHAR(20) NOT NULL UNIQUE
);
-- Creación de la tabla Devoluciones
CREATE TABLE Devoluciones (
    id serial PRIMARY KEY,
    id_pelicula INT REFERENCES Peliculas(id),
    fecha_devolucion DATE
);
-- Creación de la tabla ListaEspera
CREATE TABLE ListaEspera (
    id serial PRIMARY KEY,
    id_socio INT REFERENCES Socios(id),
    titulo_pelicula VARCHAR(255) NOT NULL
);