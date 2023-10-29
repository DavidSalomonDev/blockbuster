# Universidad de El Salvador

## Ingeniería en Desarrollo de Software

### Proyecto de Administración de Bases de Datos

### Caso No. 3 - Videoclub

### Integrantes

- Mendez Montes, Cristhoper Alexander MM22116
- Martínez Valladares, David Salomón MV12013
- Rosales Valdes, Fernando José RV19012

## Descripción del Proyecto

Este proyecto tiene como objetivo diseñar una base de datos relacional para gestionar la información relacionada con los
préstamos de películas en un vídeo club. Actualmente, la gestión de esta información se realiza a través de fichas de
préstamo y fichas de películas prestadas y devueltas. El proyecto busca proporcionar una solución eficiente para llevar
un registro de los préstamos, la información de los socios, las películas disponibles, los géneros, los directores y los
actores.

## Estructura de la Base de Datos

El diseño de la base de datos consta de varias tablas, cada una de las cuales almacena información específica. Estas
tablas incluyen:

1. `Socios`: Almacena información sobre los socios del vídeo club, como su nombre, dirección, teléfono y preferencias
   cinematográficas.

2. `Películas`: Registra información sobre las películas disponibles, como el título, género, director y actores.

3. `Préstamos`: Registra los préstamos de películas a los socios, incluyendo el socio, la fecha y el número de cinta.

4. `Fichas de Películas Prestadas`: Almacena las fichas de películas que han sido prestadas y se han devuelto.

5. `Fichas de Películas por Título`: Contiene fichas de películas ordenadas por título, incluyendo género, director y
   actores.

6. `Fichas de Socios`: Almacena las fichas de socios ordenadas por el código del carné, incluyendo sus preferencias y
   datos personales.

7. `Lista de Espera`: Registra a los socios en lista de espera para películas agotadas.

## Secuencia de Ejecución de Scripts

Para implementar esta base de datos, se deben ejecutar los siguientes scripts en el siguiente orden:

1. `01_create_database.sql`: Este script crea la base de datos, los usuarios y asigna los privilegios de super
   administrador.
2. `02_create_types.sql`: Crea los tipos que se usaran en las tablas.
2. `03_create_tables.sql`: Este script crea las tablas necesarias para almacenar la información de socios, películas y
   préstamos.

2. `04_create_indexes.sql`: Crea índices para mejorar el rendimiento de las consultas en la base de datos.

3. `03_insert_initial_data.sql`: Inserta datos iniciales de prueba en las tablas, como algunos socios y películas.

4. `04_create_views.sql`: Crea vistas que proporcionan información específica sobre películas y socios.

5. `05_create_procedures.sql`: Define procedimientos almacenados para realizar acciones específicas, como registrar un
   préstamo o devolución.

6. `06_create_triggers.sql`: Crea desencadenadores que automatizan ciertas acciones cuando se registran préstamos o
   devoluciones.

7. `07_sample_queries.sql`: Proporciona ejemplos de consultas SQL que se pueden realizar en la base de datos.

## Contribución

Este proyecto es para fines académicos y no está abierto a contribuciones externas mas que solo por los mismos
integrantes del grupo.

## Licencia

Este proyecto no tiene una licencia de código abierto. Todos los derechos están reservados.
