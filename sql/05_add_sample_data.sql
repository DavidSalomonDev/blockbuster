INSERT INTO
    SOCIO (NOMBRE, DIRECCION, TELEFONO)
VALUES
    ('María Gómez', 'Residencial Vista, Ciudad', '+503 2345-6789'),
    ('Carlos Hernandez', 'Colonia Bella Vista, Pueblo', '+503 7654-3210'),
    ('Luisa Molina', 'Condominio Los Pinos, Ciudad', '+503 1111-2222'),
    ('Roberto Martínez', 'Barrio San Antonio, Pueblo', '+503 3333-4444'),
    ('Sofía García', 'Urbanización Moderna, Ciudad', '+503 5555-6666'),
    ('Ricardo Castro', 'Residencial El Bosque, Pueblo', '+503 7777-8888'),
    ('Elena Herrera', 'Calle del Sol, Ciudad', '+503 9999-0000'),
    ('Miguel Díaz', 'Barrio Los Alamos, Pueblo', '+503 1122-3344'),
    ('Carmen Torres', 'Condominio Primavera, Ciudad', '+503 5566-7788'),
    ('Javier López', 'Colonia San Rafael, Pueblo', '+503 9900-1122'),
    ('Isabel Navarro', 'Residencial Los Olivos, Ciudad', '+503 2233-4455'),
    ('Pedro Salazar', 'Barrio Santa Rosa, Pueblo', '+503 6677-8899'),
    ('Laura Méndez', 'Condominio Los Cerezos, Ciudad', '+503 1122-3344'),
    ('Francisco Cáceres', 'Calle de la Luna, Pueblo', '+503 5566-7788'),
    ('Adriana Castro', 'Urbanización Los Robles, Ciudad', '+503 3344-5566'),
    ('Antonio Ramírez', 'Condominio El Parque, Pueblo', '+503 7788-9900'),
    ('Beatriz Sánchez', 'Residencial San Francisco, Ciudad', '+503 0011-2233'),
    ('Hector Morales', 'Colonia Los Pinos, Pueblo', '+503 4455-6677'),
    ('Gabriela Fernández', 'Condominio Las Acacias, Ciudad', '+503 8899-0011'),
    ('Alberto González', 'Barrio Los Cocos, Pueblo', '+503 2233-4455');

INSERT INTO
    DIRECTOR (NOMBRE)
VALUES
    ('Steven Spielberg'),
    ('Martin Scorsese'),
    ('Francis Ford Coppola'),
    ('Alfred Hitchcock'),
    ('Stanley Kubrick'),
    ('James Cameron'),
    ('Peter Jackson'),
    ('Coen Brothers'),
    ('David Fincher'),
    ('Tim Burton'),
    ('Christopher Nolan'),
    ('Quentin Tarantino'),
    ('Spike Lee'),
    ('Ridley Scott'),
    ('Guillermo del Toro'),
    ('Pedro Almodóvar'),
    ('Greta Gerwig'),
    ('Ava DuVernay'),
    ('Wes Anderson'),
    ('Ang Lee');

-- Agregar datos a la tabla ACTOR
INSERT INTO
    ACTOR (NOMBRE)
VALUES
    ('Brad Pitt'),
    ('Emma Stone'),
    ('Tom Hanks'),
    ('Jennifer Lawrence'),
    ('Robert Downey Jr.'),
    ('Charlize Theron'),
    ('Johnny Depp'),
    ('Natalie Portman'),
    ('Matt Damon'),
    ('Meryl Streep'),
    ('Chris Hemsworth'),
    ('Gal Gadot'),
    ('Ryan Gosling'),
    ('Anne Hathaway'),
    ('Joaquin Phoenix'),
    ('Cate Blanchett'),
    ('Idris Elba'),
    ('Angelina Jolie'),
    ('Eddie Redmayne'),
    ('Viola Davis');

-- Agregar datos a la tabla PELICULA
INSERT INTO
    PELICULA (TITULO, GENERO, ID_CINTA)
VALUES
    ('Sueño de Fuga', 'Drama', 3),
    ('El Padrino', 'Crimen', 4),
    ('El Caballero de la Noche', 'Acción', 5),
    ('Forrest Gump', 'Drama', 6),
    ('Bastardos sin Gloria', 'Guerra', 7),
    ('Titanic', 'Romance', 8),
    ('Matrix', 'Ciencia Ficción', 9),
    ('El Silencio de los Corderos', 'Thriller', 10),
    ('La Lista de Schindler', 'Histórica', 11),
    ('Casablanca', 'Romance', 12),
    ('El Club de la Lucha', 'Drama', 13),
    ('Sueño de Fuga', 'Acción', 14),
    ('El Señor de los Anillos: La Comunidad del Anillo', 'Aventura', 15),
    ('Infiltrados', 'Crimen', 16),
    ('Gladiador', 'Acción', 17),
    ('El Gran Hotel Budapest', 'Comedia', 18),
    ('La La Land', 'Musical', 19),
    ('Gravedad', 'Ciencia Ficción', 20),
    ('Avatar', 'Acción', 21),
    ('Cisne Negro', 'Drama', 22);


-- Agregar datos a la tabla CINTAS
INSERT INTO
    CINTAS (ID_PELICULA, CANTIDAD)
VALUES
    (3, 10),
    (4, 15),
    (5, 7),
    (6, 12),
    (7, 20),
    (8, 5),
    (9, 8),
    (10, 3),
    (11, 18),
    (12, 6),
    (13, 9),
    (14, 14),
    (15, 25),
    (16, 11),
    (17, 16),
    (18, 4),
    (19, 13),
    (20, 22),
    (21, 17),
    (22, 10);

-- Agregar datos a la tabla PELICULA_ACTOR
INSERT INTO
    PELICULA_ACTOR (ID_PELICULA, ID_ACTOR)
VALUES
    (3, 3),   -- The Dark Knight - Tom Hanks
    (4, 4),   -- Forrest Gump - Jennifer Lawrence
    (5, 5),   -- Inglourious Basterds - Robert Downey Jr.
    (6, 6),   -- Titanic - Charlize Theron
    (7, 7),   -- The Matrix - Johnny Depp
    (8, 8),   -- The Silence of the Lambs - Natalie Portman
    (9, 9),   -- Schindler's List - Matt Damon
    (10, 10), -- Casablanca - Meryl Streep
    (11, 11), -- Fight Club - Chris Hemsworth
    (12, 12), -- The Shawshank Redemption - Gal Gadot
    (13, 13), -- The Lord of the Rings - Ryan Gosling
    (14, 14), -- The Departed - Anne Hathaway
    (15, 15), -- Gladiator - Joaquin Phoenix
    (16, 16), -- The Grand Budapest Hotel - Cate Blanchett
    (17, 17), -- La La Land - Idris Elba
    (18, 18), -- Gravity - Angelina Jolie
    (19, 19), -- Avatar - Eddie Redmayne
    (20, 20), -- Black Swan - Viola Davis
    (21, 3),  -- The Shawshank Redemption - Tom Hanks
    (22, 4);
-- The Godfather - Jennifer Lawrence

-- Agregar datos a la tabla DIRECTOR_PELICULA
INSERT INTO
    DIRECTOR_PELICULA (ID_PELICULA, ID_DIRECTOR)
VALUES
    (3, 5),   -- The Dark Knight - Stanley Kubrick
    (4, 6),   -- Forrest Gump - James Cameron
    (5, 7),   -- Inglourious Basterds - Peter Jackson
    (6, 8),   -- Titanic - Coen Brothers
    (7, 9),   -- The Matrix - David Fincher
    (8, 10),  -- The Silence of the Lambs - Tim Burton
    (9, 11),  -- Schindler's List - Christopher Nolan
    (10, 12), -- Casablanca - Quentin Tarantino
    (11, 13), -- Fight Club - Spike Lee
    (12, 14), -- The Shawshank Redemption - Ridley Scott
    (13, 15), -- The Lord of the Rings - Guillermo del Toro
    (14, 16), -- The Departed - Pedro Almodóvar
    (15, 17), -- Gladiator - Greta Gerwig
    (16, 18), -- The Grand Budapest Hotel - Ava DuVernay
    (17, 19), -- La La Land - Wes Anderson
    (18, 20), -- Gravity - Ang Lee
    (19, 5),  -- Avatar - Stanley Kubrick
    (20, 6);
-- Black Swan - James Cameron

-- Agregar datos a la tabla INFORMACION_CINTA
INSERT INTO
    INFORMACION_CINTA (ID_CINTA, CANTIDAD)
VALUES
    (3, 10),
    (4, 15),
    (5, 7),
    (6, 12),
    (7, 20),
    (8, 5),
    (9, 8),
    (10, 3),
    (11, 18),
    (12, 6),
    (13, 9),
    (14, 14),
    (15, 25),
    (16, 11),
    (17, 16),
    (18, 4),
    (19, 13),
    (20, 22),
    (21, 17),
    (22, 10);

-- Agregar datos a la tabla PRESTAMOS
INSERT INTO
    PRESTAMOS (ID_SOCIO, ID_CINTA, FECHA)
VALUES
    (3, 3, '2023-03-10'),
    (4, 4, '2023-03-15'),
    (5, 5, '2023-03-20'),
    (6, 6, '2023-03-25'),
    (7, 7, '2023-04-01'),
    (8, 8, '2023-04-05'),
    (9, 9, '2023-04-10'),
    (10, 10, '2023-04-15'),
    (11, 11, '2023-04-20'),
    (12, 12, '2023-04-25'),
    (13, 13, '2023-05-01'),
    (14, 14, '2023-05-05'),
    (15, 15, '2023-05-10'),
    (16, 16, '2023-05-15'),
    (17, 17, '2023-05-20'),
    (18, 18, '2023-05-25'),
    (19, 19, '2023-06-01'),
    (20, 20, '2023-06-05'),
    (21, 21, '2023-06-10'),
    (22, 22, '2023-06-15');

-- Agregar datos a la tabla DEVOLUCIONES
INSERT INTO
    DEVOLUCIONES (ID_PRESTAMO, FECHA)
VALUES
    (3, '2023-03-12'),
    (4, '2023-03-17'),
    (5, '2023-03-22'),
    (6, '2023-03-27'),
    (7, '2023-04-03'),
    (8, '2023-04-07'),
    (9, '2023-04-12'),
    (10, '2023-04-17'),
    (11, '2023-04-22'),
    (12, '2023-04-27'),
    (13, '2023-05-03'),
    (14, '2023-05-07'),
    (15, '2023-05-12'),
    (16, '2023-05-17'),
    (17, '2023-05-22'),
    (18, '2023-05-27'),
    (19, '2023-06-02'),
    (20, '2023-06-07'),
    (21, '2023-06-12'),
    (22, '2023-06-17');

-- Agregar datos a la tabla LISTA_ESPERA
INSERT INTO
    LISTA_ESPERA (ID_SOCIO, ID_PELICULA, FECHA_SOLICITUD)
VALUES
    (3, 3, '2023-03-01'),
    (4, 4, '2023-03-05'),
    (5, 5, '2023-03-10'),
    (6, 6, '2023-03-15'),
    (7, 7, '2023-03-20'),
    (8, 8, '2023-03-25'),
    (9, 9, '2023-03-30'),
    (10, 10, '2023-04-04'),
    (11, 11, '2023-04-09'),
    (12, 12, '2023-04-14'),
    (13, 13, '2023-04-19'),
    (14, 14, '2023-04-24'),
    (15, 15, '2023-04-29'),
    (16, 16, '2023-05-04'),
    (17, 17, '2023-05-09'),
    (18, 18, '2023-05-14'),
    (19, 19, '2023-05-19'),
    (20, 20, '2023-05-24'),
    (21, 21, '2023-05-29'),
    (22, 22, '2023-06-03');
