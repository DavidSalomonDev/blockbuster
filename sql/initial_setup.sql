-- Creación de la base de datos
CREATE DATABASE blockbuster;
-- Creación de superusuarios
CREATE USER davidsalomon WITH SUPERUSER PASSWORD 'admin1';
CREATE USER davidsalomon WITH SUPERUSER PASSWORD 'admin2';
CREATE USER davidsalomon WITH SUPERUSER PASSWORD 'admin3';
-- Concesión de permisos al usuario administrador para la base de datos
GRANT ALL PRIVILEGES ON DATABASE blockbuster TO davidsalomon;
GRANT ALL PRIVILEGES ON DATABASE blockbuster TO davidsalomon;
GRANT ALL PRIVILEGES ON DATABASE blockbuster TO davidsalomon;