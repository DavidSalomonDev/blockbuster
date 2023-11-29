-- El nombre del socio que pide el préstamo, la fecha que hizo el préstamo y el número de la cinta que lleva.
SELECT
    S.NOMBRE   AS NOMBRE_SOCIO,
    P.FECHA    AS FECHA_PRESTAMO,
    C.ID_CINTA AS NUMERO_CINTA
FROM
    PRESTAMOS P
        JOIN SOCIO S ON P.ID_SOCIO = S.ID_SOCIO
        JOIN CINTAS C ON P.ID_CINTA = C.ID_CINTA;


-- Las películas que fueron prestadas y que ya no están disponibles.
SELECT
    P.TITULO   AS NOMBRE_PELICULA,
    C.ID_CINTA AS NUMERO_CINTA
FROM
    PELICULA P
        JOIN CINTAS C ON P.ID_CINTA = C.ID_CINTA
        JOIN PRESTAMOS PR ON C.ID_CINTA = PR.ID_CINTA
WHERE
    C.CANTIDAD = 0;
-- Cantidad igual a cero indica que no está disponible


-- Las películas que van siendo devueltas y que vuelven a estar disponibles.
SELECT
    P.TITULO   AS NOMBRE_PELICULA,
    C.ID_CINTA AS NUMERO_CINTA
FROM
    PELICULA P
        JOIN CINTAS C ON P.ID_CINTA = C.ID_CINTA
        JOIN PRESTAMOS PR ON C.ID_CINTA = PR.ID_CINTA
        JOIN DEVOLUCIONES D ON PR.ID_PRESTAMO = D.ID_PRESTAMO
WHERE
    C.CANTIDAD > 0;
-- Cantidad mayor a cero indica que está disponible


-- Realizar los siguientes filtros:
-- Filtrar películas por actor, por título, por género.
SELECT
    P.TITULO AS NOMBRE_PELICULA,
    A.NOMBRE AS NOMBRE_ACTOR
FROM
    PELICULA P
        JOIN PELICULA_ACTOR PA ON P.ID_PELICULA = PA.ID_PELICULA
        JOIN ACTOR A ON PA.ID_ACTOR = A.ID_ACTOR
WHERE
    A.NOMBRE = 'Nombre del Actor';


SELECT
    P.TITULO AS NOMBRE_PELICULA,
    A.NOMBRE AS NOMBRE_ACTOR,
    P.GENERO
FROM
    PELICULA P
        JOIN PELICULA_ACTOR PA ON P.ID_PELICULA = PA.ID_PELICULA
        JOIN ACTOR A ON PA.ID_ACTOR = A.ID_ACTOR
WHERE
    P.TITULO = 'Título de la Película';


SELECT
    P.TITULO AS NOMBRE_PELICULA,
    A.NOMBRE AS NOMBRE_ACTOR,
    P.GENERO
FROM
    PELICULA P
        JOIN PELICULA_ACTOR PA ON P.ID_PELICULA = PA.ID_PELICULA
        JOIN ACTOR A ON PA.ID_ACTOR = A.ID_ACTOR
WHERE
    P.GENERO = 'Género de la Película';


-- Filtrar a los socios por su carné.
SELECT
    NOMBRE,
    DIRECCION,
    TELEFONO
FROM
    SOCIO
WHERE
    ID_SOCIO = 'Número de Carné';


-- Filtrar a los socios por sus directores favoritos.
SELECT
    S.NOMBRE AS NOMBRE_SOCIO,
    S.DIRECCION,
    S.TELEFONO
FROM
    SOCIO S
        JOIN DIRECTOR_PELICULA DP ON S.ID_SOCIO = DP.ID_SOCIO
        JOIN DIRECTOR D ON DP.ID_DIRECTOR = D.ID_DIRECTOR
WHERE
    D.NOMBRE = 'Nombre del Director Favorito';


-- Filtrar a los clientes por lista de espera y título de la película que están esperando.
SELECT
    S.NOMBRE AS NOMBRE_SOCIO,
    P.TITULO AS PELICULA_EN_ESPERA
FROM
    SOCIO S
        JOIN LISTA_ESPERA LE ON S.ID_SOCIO = LE.ID_SOCIO
        JOIN PELICULA P ON LE.ID_PELICULA = P.ID_PELICULA;
