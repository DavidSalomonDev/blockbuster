-- El nombre del socio que pide el préstamo, la fecha que hizo el préstamo y el número de la cinta que lleva.
SELECT Socios.nombre AS "Nombre del Socio",
    Prestamos.fecha AS "Fecha del Préstamo",
    Prestamos.numero_cinta AS "Número de Cinta"
FROM Socios
    JOIN Prestamos ON Socios.id = Prestamos.id_socio;
-- Las películas que fueron prestadas y que ya no están disponibles.
SELECT Peliculas.titulo AS "Título de la Película"
FROM Peliculas
WHERE Peliculas.id NOT IN (
        SELECT DISTINCT Prestamos.id_pelicula
        FROM Prestamos
    );
-- Las películas que van siendo devueltas y que vuelven a estar disponibles.
SELECT Peliculas.titulo AS "Título de la Película"
FROM Peliculas
WHERE Peliculas.id IN (
        SELECT DISTINCT Devoluciones.id_pelicula
        FROM Devoluciones
    );
-- Realizar los siguientes filtros:
-- a. Filtrar películas por actor, por título, por género.
SELECT titulo AS "Título de la Película"
FROM Peliculas
WHERE 'Nombre del Actor' = ANY(actores);
SELECT *
FROM Peliculas
WHERE titulo = 'Título de la Película';
-- Filtrar por género:
SELECT *
FROM Peliculas
WHERE genero = 'Género de la Película';
-- b. Filtrar a los socios por su carné.
SELECT *
FROM Socios
WHERE carne = 'Número de Carné';
-- c. Filtrar a los socios por sus directores favoritos.
SELECT nombre AS "Nombre del Socio"
FROM Socios
WHERE 'Nombre del Director Favorito' = ANY(directores_favoritos);
-- d. Filtrar a los clientes por lista de espera y título de la película que están esperando.
SELECT Socios.nombre AS "Nombre del Socio",
    ListaEspera.titulo_pelicula AS "Título de la Película Esperada"
FROM Socios
    JOIN ListaEspera ON Socios.id = ListaEspera.id_socio;