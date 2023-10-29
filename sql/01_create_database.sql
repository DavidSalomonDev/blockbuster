/**
 * Este script de PostgreSQL crea una nueva base de datos con el nombre "blockbuster" y configura
 * diversas propiedades para la base de datos. Estas propiedades incluyen:
 * - El propietario de la base de datos se establece como "admin".
 * - La codificación de caracteres se configura en 'UTF8'.
 * - El proveedor de localización se establece en 'libc'.
 * - Se establece el límite de conexiones en -1, lo que significa que no hay un límite específico.
 * - La base de datos no se configura como una plantilla, ya que "IS_TEMPLATE" se establece en False.
 *
 * Este script es útil para crear una base de datos llamada "blockbuster" con las configuraciones
 * mencionadas, lo que puede ser importante para un sistema de gestión de datos específico.
 */

CREATE DATABASE blockbuster
	WITH
	OWNER = admin
	ENCODING = 'UTF8'
	LOCALE_PROVIDER = 'libc'
	CONNECTION LIMIT = -1
	IS_TEMPLATE = FALSE;

/**
 * Este script de PostgreSQL crea tres nuevos superusuarios en la base de datos con los nombres
 * "davidsalomon," "fernando," y "cristhoper," y establece las mismas propiedades para cada uno.
 * Estas propiedades incluyen:
 * - Permiso de inicio de sesión (LOGIN).
 * - Permisos de superusuario (SUPERUSER).
 * - Permiso para crear bases de datos (CREATEDB).
 * - Permiso para crear roles (CREATEROLE).
 * - Herencia de permisos (INHERIT).
 * - Sin replicación (NOREPLICATION).
 * - Límite de conexiones establecido en -1, lo que significa que no hay un límite específico.
 * - Contraseñas configuradas como 'admin1', 'admin2', y 'admin3' para los respectivos superusuarios.
 *
 * Este script crea tres superusuarios con las mismas configuraciones, permitiendo múltiples
 * usuarios con los mismos privilegios en la base de datos.
 */

CREATE ROLE davidsalomon WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'admin1';

CREATE ROLE fernando WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'admin2';

CREATE ROLE cristhoper WITH
	LOGIN
	SUPERUSER
	CREATEDB
	CREATEROLE
	INHERIT
	NOREPLICATION
	CONNECTION LIMIT -1
	PASSWORD 'admin3';

/**
 * Estos scripts otorgan permisos en la base de datos "blockbuster" a diferentes usuarios:
 * 1. El primer script otorga permisos temporales y de conexión a la base de datos al público en general (PUBLIC).
 * 2. Los siguientes tres scripts otorgan todos los permisos en la base de datos "blockbuster" a los usuarios
 *    "davidsalomon," "fernando," y "cristhoper" respectivamente.
 *
 * Estos scripts son importantes para definir quién tiene acceso y qué permisos en la base de datos "blockbuster,"
 * lo que puede ser esencial para el funcionamiento del sistema.
 */
GRANT TEMPORARY, CONNECT ON DATABASE blockbuster TO PUBLIC;

GRANT ALL ON DATABASE blockbuster TO davidsalomon;
GRANT ALL ON DATABASE blockbuster TO fernando;
GRANT ALL ON DATABASE blockbuster TO cristhoper;
