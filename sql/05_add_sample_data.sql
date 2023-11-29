-- Inserción de datos en la tabla SOCIO
INSERT INTO
    SOCIO (NOMBRE, DIRECCION, TELEFONO)
VALUES
    ('María Gómez', 'Residencial Vista, Ciudad', '+503 2345-6789'),
    ('Carlos Hernandez', 'Colonia Bella Vista, Pueblo', '+503 7654-3210'),
    ('Luisa Molina', 'Condominio Los Pinos, Ciudad', '+503 1111-2222'),
    ('Ana Rodríguez', 'Barrio San Antonio, Pueblo', '+503 5555-8888'),
    ('Javier López', 'Condominio El Bosque, Ciudad', '+503 7777-9999'),
    ('Rosa Martínez', 'Colonia Centro, Pueblo', '+503 3333-4444'),
    ('Juan Torres', 'Residencial Los Alamos, Ciudad', '+503 6789-0123'),
    ('Elena Flores', 'Condominio La Sierra, Ciudad', '+503 4567-8901'),
    ('Pedro Castro', 'Barrio San Juan, Pueblo', '+503 7890-1234'),
    ('Silvia Cruz', 'Colonia Santa Elena, Ciudad', '+503 9876-5432'),
    ('Miguel Sánchez', 'Condominio Los Olivos, Ciudad', '+503 1122-3344'),
    ('Carmen Ramos', 'Barrio El Carmen, Pueblo', '+503 5566-7788'),
    ('Pablo Diaz', 'Residencial El Paraiso, Ciudad', '+503 9900-1122'),
    ('Isabel Montes', 'Colonia San Francisco, Ciudad', '+503 3344-5566'),
    ('Arturo Mejía', 'Condominio Las Palmas, Ciudad', '+503 6677-8899'),
    ('Lorena Avila', 'Barrio El Bosque, Pueblo', '+503 4455-6677'),
    ('Raúl Sosa', 'Residencial La Cima, Ciudad', '+503 7788-9900'),
    ('Gloria Pineda', 'Colonia San Jose, Ciudad', '+503 2233-4455'),
    ('Fernando Torres', 'Condominio Los Pinos, Ciudad', '+503 5566-7788'),
    ('Natalia Ruiz', 'Barrio Santa Lucia, Pueblo', '+503 3344-5566');

-- Inserción de datos en la tabla DIRECTOR
INSERT INTO
    DIRECTOR (NOMBRE)
VALUES
    ('Christopher Nolan'),
    ('Quentin Tarantino'),
    ('Greta Gerwig'),
    ('Martin Scorsese'),
    ('Sofia Coppola'),
    ('Steven Spielberg'),
    ('Alfonso Cuarón'),
    ('Ava DuVernay'),
    ('Bong Joon-ho'),
    ('Francis Ford Coppola'),
    ('Guillermo del Toro'),
    ('Ang Lee'),
    ('Ridley Scott'),
    ('Jordan Peele'),
    ('David Fincher'),
    ('Jane Campion'),
    ('Denis Villeneuve'),
    ('Wes Anderson'),
    ('Coen Brothers'),
    ('Cate Shortland');

-- Inserción de datos en la tabla ACTOR
INSERT INTO
    ACTOR (NOMBRE)
VALUES
    ('Leonardo DiCaprio'),
    ('Scarlett Johansson'),
    ('Brad Pitt'),
    ('Meryl Streep'),
    ('Tom Hanks'),
    ('Jennifer Lawrence'),
    ('Johnny Depp'),
    ('Cate Blanchett'),
    ('Robert Downey Jr.'),
    ('Natalie Portman'),
    ('Denzel Washington'),
    ('Anne Hathaway'),
    ('Joaquin Phoenix'),
    ('Charlize Theron'),
    ('Chris Hemsworth'),
    ('Emma Stone'),
    ('Ryan Gosling'),
    ('Angelina Jolie'),
    ('Matt Damon'),
    ('Gal Gadot');

-- Inserción de datos en la tabla PELICULA
INSERT INTO
    PELICULA (TITULO, GENERO, ID_CINTA)
VALUES
    ('Inception', 'Ciencia Ficción', 1),
    ('Pulp Fiction', 'Crimen', 2),
    ('Little Women', 'Drama', 3),
    ('The Irishman', 'Biografía', 4),
    ('Lost in Translation', 'Drama', 5),
    ('Schindler''s List', 'Histórica', 6),
    ('Gravity', 'Ciencia Ficción', 7),
    ('A Wrinkle in Time', 'Aventura', 8),
    ('Parasite', 'Drama', 9),
    ('The Godfather', 'Crimen', 10),
    ('Pans Labyrinth', 'Fantasía', 11),
    ('Life of Pi', 'Aventura', 12),
    ('Blade Runner 2049', 'Ciencia Ficción', 13),
    ('Get Out', 'Terror', 14),
    ('Fight Club', 'Drama', 15),
    ('The Piano', 'Drama', 16),
    ('Arrival', 'Ciencia Ficción', 17),
    ('The Grand Budapest Hotel', 'Comedia', 18),
    ('No Country for Old Men', 'Crimen', 19),
    ('Black Widow', 'Acción', 20);


-- Inserción de datos en la tabla CINTAS
INSERT INTO
    CINTAS (ID_PELICULA, CANTIDAD)
VALUES
    (1, 5),
    (2, 3),
    (3, 7),
    (4, 8),
    (5, 10),
    (6, 6),
    (7, 4),
    (8, 5),
    (9, 9),
    (10, 3),
    (11, 7),
    (12, 6),
    (13, 8),
    (14, 4),
    (15, 5),
    (16, 6),
    (17, 3),
    (18, 5),
    (19, 7),
    (20, 8);

-- Inserción de datos en la tabla PRESTAMOS
INSERT INTO
    PRESTAMOS (ID_SOCIO, ID_CINTA, FECHA)
VALUES
    (1, 1, '2023-01-01'),
    (2, 2, '2023-02-15'),
    (3, 3, '2023-03-20'),
    (4, 4, '2023-04-05'),
    (5, 5, '2023-05-10'),
    (6, 6, '2023-06-15'),
    (7, 7, '2023-07-01'),
    (8, 8, '2023-08-15'),
    (9, 9, '2023-09-20'),
    (10, 10, '2023-10-05'),
    (11, 11, '2023-11-10'),
    (12, 12, '2023-12-15'),
    (13, 13, '2024-01-01'),
    (14, 14, '2024-02-15'),
    (15, 15, '2024-03-20'),
    (16, 16, '2024-04-05'),
    (17, 17, '2024-05-10'),
    (18, 18, '2024-06-15'),
    (19, 19, '2024-07-01'),
    (20, 20, '2024-08-15');

-- Inserción de datos en la tabla DEVOLUCIONES
INSERT INTO
    DEVOLUCIONES (ID_PRESTAMO, FECHA)
VALUES
    (1, '2023-01-10'),
    (2, '2023-03-01'),
    (3, '2023-04-05'),
    (4, '2023-05-20'),
    (5, '2023-06-15'),
    (6, '2023-07-20'),
    (7, '2023-08-25'),
    (8, '2023-09-30'),
    (9, '2023-10-15'),
    (10, '2023-11-20'),
    (11, '2023-12-25'),
    (12, '2024-01-10'),
    (13, '2024-02-25'),
    (14, '2024-03-30'),
    (15, '2024-04-15'),
    (16, '2024-05-20'),
    (17, '2024-06-25'),
    (18, '2024-07-30'),
    (19, '2024-08-15'),
    (20, '2024-09-20');

-- Inserción de datos en la tabla LISTA_ESPERA
INSERT INTO
    LISTA_ESPERA (ID_SOCIO, ID_PELICULA, FECHA_SOLICITUD)
VALUES
    (1, 2, '2023-02-01'),
    (2, 3, '2023-03-10'),
    (3, 4, '2023-04-15'),
    (4, 5, '2023-05-25'),
    (5, 1, '2023-06-30'),
    (6, 7, '2023-08-01'),
    (7, 8, '2023-09-10'),
    (8, 9, '2023-10-15'),
    (9, 10, '2023-11-25'),
    (10, 11, '2023-12-30'),
    (11, 12, '2024-02-01'),
    (12, 13, '2024-03-10'),
    (13, 14, '2024-04-15'),
    (14, 15, '2024-05-25'),
    (15, 16, '2024-06-30'),
    (16, 17, '2024-08-01'),
    (17, 18, '2024-09-10'),
    (18, 19, '2024-10-15'),
    (19, 20, '2024-11-25'),
    (20, 1, '2024-12-30');
