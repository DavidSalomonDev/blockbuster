/**
 * Este script de PostgreSQL crea un nuevo tipo enumerado (ENUM) llamado "genero_pelicula" que define
 * una serie de géneros de películas, como 'Acción', 'Comedia', 'Drama', 'Ciencia Ficción' y otros.
 *
 * Este tipo enumerado es útil para limitar las opciones disponibles al asignar géneros a películas en
 * una base de datos. Al usar este tipo enumerado, se asegura la consistencia en los valores de género
 * y simplifica las consultas relacionadas con géneros de películas.
 */
CREATE TYPE genero_pelicula AS ENUM (
	'Acción',
	'Comedia',
	'Drama',
	'Ciencia Ficción',
	'Aventura',
	'Romance',
	'Animación',
	'Fantasía',
	'Terror',
	'Documental',
	'Crimen',
	'Misterio',
	'Musical',
	'Biografía',
	'Western',
	'Guerra',
	'Histórica',
	'Superhéroes',
	'Suspenso'
	);