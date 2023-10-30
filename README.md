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

1. `Socio`: Almacena información sobre los socios del vídeo club, como su nombre, dirección, teléfono y preferencias
   cinematográficas.

2. `Director`: Registra información sobre los directores de las películas, incluyendo su nombre.

3. `Actor`: Almacena datos sobre los actores que participan en las películas, incluyendo su nombre.

4. `Película`: Contiene información sobre las películas disponibles en el videoclub, como título, género y referencias a
   directores, actores y cintas.

5. `Cintas`: Lleva el inventario de las cintas disponibles en el videoclub, incluyendo la cantidad de copias, la última
   devolución y el último préstamo.

6. `Préstamos`: Registra los préstamos de cintas a los socios, incluyendo la fecha y el número de cinta.

7. `Devoluciones`: Registra las devoluciones de cintas, incluyendo la fecha.

8. `Lista de Espera: Gestiona las listas de espera de películas agotadas, incluyendo solicitudes de socios.

## Secuencia de Ejecución de Scripts

Para implementar esta base de datos, se deben ejecutar los siguientes scripts en el siguiente orden:

1. `01_create_database.sql`: Este script crea la base de datos, los usuarios y asigna los privilegios de super
   administrador.
2. `02_create_types.sql`: Crea los tipos que se usaran en las tablas.
2. `03_create_tables.sql`: Este script crea las tablas necesarias para almacenar la información de socios, películas y
   préstamos.

2. `04_create_relations.sql`: Crea las relaciones entre las tablas existentes.

3. `05_create_sample_data.sql`: Inserta datos iniciales de prueba en las tablas, como algunos socios y películas.

4. `06_create_views.sql`: Crea vistas que proporcionan información específica sobre películas y socios.

5. `07_create_procedures.sql`: Define procedimientos almacenados para realizar acciones específicas, como registrar un
   préstamo o devolución.

6. `08_create_triggers.sql`: Crea desencadenadores que automatizan ciertas acciones cuando se registran préstamos o
   devoluciones.

7. `09_sample_queries.sql`: Proporciona ejemplos de consultas SQL que se pueden realizar en la base de datos.

## Contribución

Este proyecto es para fines académicos y no está abierto a contribuciones externas mas que solo por los mismos
integrantes del grupo.

## Licencia

Este proyecto no tiene una licencia de código abierto. Todos los derechos están reservados.
