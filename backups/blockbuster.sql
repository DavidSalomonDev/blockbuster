toc.dat                                                                                             0000600 0004000 0002000 00000052712 14532236721 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       )    :            
    {            blockbuster    15.4    15.4 I    S           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         T           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         U           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         V           1262    24598    blockbuster    DATABASE     �   CREATE DATABASE blockbuster WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';
    DROP DATABASE blockbuster;
                postgres    false         U           1247    24600    genero_pelicula    TYPE     f  CREATE TYPE public.genero_pelicula AS ENUM (
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
 "   DROP TYPE public.genero_pelicula;
       public          postgres    false         �            1259    24656    actor    TABLE     i   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(255) NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false         �            1259    24655    actor_id_actor_seq    SEQUENCE     �   CREATE SEQUENCE public.actor_id_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.actor_id_actor_seq;
       public          postgres    false    219         W           0    0    actor_id_actor_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.actor_id_actor_seq OWNED BY public.actor.id_actor;
          public          postgres    false    218         �            1259    24672    cintas    TABLE     �   CREATE TABLE public.cintas (
    id_cinta integer NOT NULL,
    id_pelicula integer NOT NULL,
    cantidad integer NOT NULL,
    ultima_devolucion date,
    ultimo_prestamo date
);
    DROP TABLE public.cintas;
       public         heap    postgres    false         �            1259    24671    cintas_id_cinta_seq    SEQUENCE     �   CREATE SEQUENCE public.cintas_id_cinta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cintas_id_cinta_seq;
       public          postgres    false    223         X           0    0    cintas_id_cinta_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cintas_id_cinta_seq OWNED BY public.cintas.id_cinta;
          public          postgres    false    222         �            1259    24686    devoluciones    TABLE     �   CREATE TABLE public.devoluciones (
    id_devolucion integer NOT NULL,
    id_prestamo integer NOT NULL,
    fecha date NOT NULL
);
     DROP TABLE public.devoluciones;
       public         heap    postgres    false         �            1259    24685    devoluciones_id_devolucion_seq    SEQUENCE     �   CREATE SEQUENCE public.devoluciones_id_devolucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.devoluciones_id_devolucion_seq;
       public          postgres    false    227         Y           0    0    devoluciones_id_devolucion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.devoluciones_id_devolucion_seq OWNED BY public.devoluciones.id_devolucion;
          public          postgres    false    226         �            1259    24649    director    TABLE     o   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(255) NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false         �            1259    24648    director_id_director_seq    SEQUENCE     �   CREATE SEQUENCE public.director_id_director_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.director_id_director_seq;
       public          postgres    false    217         Z           0    0    director_id_director_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.director_id_director_seq OWNED BY public.director.id_director;
          public          postgres    false    216         �            1259    24693    lista_espera    TABLE     �   CREATE TABLE public.lista_espera (
    id_lista_espera integer NOT NULL,
    id_socio integer NOT NULL,
    id_pelicula integer NOT NULL,
    fecha_solicitud date NOT NULL
);
     DROP TABLE public.lista_espera;
       public         heap    postgres    false         �            1259    24692     lista_espera_id_lista_espera_seq    SEQUENCE     �   CREATE SEQUENCE public.lista_espera_id_lista_espera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.lista_espera_id_lista_espera_seq;
       public          postgres    false    229         [           0    0     lista_espera_id_lista_espera_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.lista_espera_id_lista_espera_seq OWNED BY public.lista_espera.id_lista_espera;
          public          postgres    false    228         �            1259    24663    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    titulo character varying(255) NOT NULL,
    genero public.genero_pelicula,
    director integer,
    actores integer[],
    id_cinta integer
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false    853         �            1259    24699    pelicula_actor    TABLE     h   CREATE TABLE public.pelicula_actor (
    id_pelicula integer NOT NULL,
    id_actor integer NOT NULL
);
 "   DROP TABLE public.pelicula_actor;
       public         heap    postgres    false         �            1259    24662    pelicula_id_pelicula_seq    SEQUENCE     �   CREATE SEQUENCE public.pelicula_id_pelicula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.pelicula_id_pelicula_seq;
       public          postgres    false    221         \           0    0    pelicula_id_pelicula_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.pelicula_id_pelicula_seq OWNED BY public.pelicula.id_pelicula;
          public          postgres    false    220         �            1259    24679 	   prestamos    TABLE     �   CREATE TABLE public.prestamos (
    id_prestamo integer NOT NULL,
    id_socio integer NOT NULL,
    id_cinta integer NOT NULL,
    fecha date NOT NULL
);
    DROP TABLE public.prestamos;
       public         heap    postgres    false         �            1259    24678    prestamos_id_prestamo_seq    SEQUENCE     �   CREATE SEQUENCE public.prestamos_id_prestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.prestamos_id_prestamo_seq;
       public          postgres    false    225         ]           0    0    prestamos_id_prestamo_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.prestamos_id_prestamo_seq OWNED BY public.prestamos.id_prestamo;
          public          postgres    false    224         �            1259    24640    socio    TABLE     �   CREATE TABLE public.socio (
    id_socio integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL
);
    DROP TABLE public.socio;
       public         heap    postgres    false         �            1259    24639    socio_id_socio_seq    SEQUENCE     �   CREATE SEQUENCE public.socio_id_socio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.socio_id_socio_seq;
       public          postgres    false    215         ^           0    0    socio_id_socio_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.socio_id_socio_seq OWNED BY public.socio.id_socio;
          public          postgres    false    214         �           2604    24659    actor id_actor    DEFAULT     p   ALTER TABLE ONLY public.actor ALTER COLUMN id_actor SET DEFAULT nextval('public.actor_id_actor_seq'::regclass);
 =   ALTER TABLE public.actor ALTER COLUMN id_actor DROP DEFAULT;
       public          postgres    false    218    219    219         �           2604    24675    cintas id_cinta    DEFAULT     r   ALTER TABLE ONLY public.cintas ALTER COLUMN id_cinta SET DEFAULT nextval('public.cintas_id_cinta_seq'::regclass);
 >   ALTER TABLE public.cintas ALTER COLUMN id_cinta DROP DEFAULT;
       public          postgres    false    223    222    223         �           2604    24689    devoluciones id_devolucion    DEFAULT     �   ALTER TABLE ONLY public.devoluciones ALTER COLUMN id_devolucion SET DEFAULT nextval('public.devoluciones_id_devolucion_seq'::regclass);
 I   ALTER TABLE public.devoluciones ALTER COLUMN id_devolucion DROP DEFAULT;
       public          postgres    false    226    227    227         �           2604    24652    director id_director    DEFAULT     |   ALTER TABLE ONLY public.director ALTER COLUMN id_director SET DEFAULT nextval('public.director_id_director_seq'::regclass);
 C   ALTER TABLE public.director ALTER COLUMN id_director DROP DEFAULT;
       public          postgres    false    216    217    217         �           2604    24696    lista_espera id_lista_espera    DEFAULT     �   ALTER TABLE ONLY public.lista_espera ALTER COLUMN id_lista_espera SET DEFAULT nextval('public.lista_espera_id_lista_espera_seq'::regclass);
 K   ALTER TABLE public.lista_espera ALTER COLUMN id_lista_espera DROP DEFAULT;
       public          postgres    false    229    228    229         �           2604    24666    pelicula id_pelicula    DEFAULT     |   ALTER TABLE ONLY public.pelicula ALTER COLUMN id_pelicula SET DEFAULT nextval('public.pelicula_id_pelicula_seq'::regclass);
 C   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula DROP DEFAULT;
       public          postgres    false    221    220    221         �           2604    24682    prestamos id_prestamo    DEFAULT     ~   ALTER TABLE ONLY public.prestamos ALTER COLUMN id_prestamo SET DEFAULT nextval('public.prestamos_id_prestamo_seq'::regclass);
 D   ALTER TABLE public.prestamos ALTER COLUMN id_prestamo DROP DEFAULT;
       public          postgres    false    225    224    225         �           2604    24643    socio id_socio    DEFAULT     p   ALTER TABLE ONLY public.socio ALTER COLUMN id_socio SET DEFAULT nextval('public.socio_id_socio_seq'::regclass);
 =   ALTER TABLE public.socio ALTER COLUMN id_socio DROP DEFAULT;
       public          postgres    false    215    214    215         E          0    24656    actor 
   TABLE DATA           1   COPY public.actor (id_actor, nombre) FROM stdin;
    public          postgres    false    219       3397.dat I          0    24672    cintas 
   TABLE DATA           e   COPY public.cintas (id_cinta, id_pelicula, cantidad, ultima_devolucion, ultimo_prestamo) FROM stdin;
    public          postgres    false    223       3401.dat M          0    24686    devoluciones 
   TABLE DATA           I   COPY public.devoluciones (id_devolucion, id_prestamo, fecha) FROM stdin;
    public          postgres    false    227       3405.dat C          0    24649    director 
   TABLE DATA           7   COPY public.director (id_director, nombre) FROM stdin;
    public          postgres    false    217       3395.dat O          0    24693    lista_espera 
   TABLE DATA           _   COPY public.lista_espera (id_lista_espera, id_socio, id_pelicula, fecha_solicitud) FROM stdin;
    public          postgres    false    229       3407.dat G          0    24663    pelicula 
   TABLE DATA           \   COPY public.pelicula (id_pelicula, titulo, genero, director, actores, id_cinta) FROM stdin;
    public          postgres    false    221       3399.dat P          0    24699    pelicula_actor 
   TABLE DATA           ?   COPY public.pelicula_actor (id_pelicula, id_actor) FROM stdin;
    public          postgres    false    230       3408.dat K          0    24679 	   prestamos 
   TABLE DATA           K   COPY public.prestamos (id_prestamo, id_socio, id_cinta, fecha) FROM stdin;
    public          postgres    false    225       3403.dat A          0    24640    socio 
   TABLE DATA           F   COPY public.socio (id_socio, nombre, direccion, telefono) FROM stdin;
    public          postgres    false    215       3393.dat _           0    0    actor_id_actor_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.actor_id_actor_seq', 5, true);
          public          postgres    false    218         `           0    0    cintas_id_cinta_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cintas_id_cinta_seq', 5, true);
          public          postgres    false    222         a           0    0    devoluciones_id_devolucion_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.devoluciones_id_devolucion_seq', 2, true);
          public          postgres    false    226         b           0    0    director_id_director_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.director_id_director_seq', 5, true);
          public          postgres    false    216         c           0    0     lista_espera_id_lista_espera_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.lista_espera_id_lista_espera_seq', 2, true);
          public          postgres    false    228         d           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 5, true);
          public          postgres    false    220         e           0    0    prestamos_id_prestamo_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.prestamos_id_prestamo_seq', 5, true);
          public          postgres    false    224         f           0    0    socio_id_socio_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.socio_id_socio_seq', 5, true);
          public          postgres    false    214         �           2606    24661    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    219         �           2606    24677    cintas cintas_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cintas
    ADD CONSTRAINT cintas_pkey PRIMARY KEY (id_cinta);
 <   ALTER TABLE ONLY public.cintas DROP CONSTRAINT cintas_pkey;
       public            postgres    false    223         �           2606    24691    devoluciones devoluciones_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.devoluciones
    ADD CONSTRAINT devoluciones_pkey PRIMARY KEY (id_devolucion);
 H   ALTER TABLE ONLY public.devoluciones DROP CONSTRAINT devoluciones_pkey;
       public            postgres    false    227         �           2606    24654    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    217         �           2606    24698    lista_espera lista_espera_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.lista_espera
    ADD CONSTRAINT lista_espera_pkey PRIMARY KEY (id_lista_espera);
 H   ALTER TABLE ONLY public.lista_espera DROP CONSTRAINT lista_espera_pkey;
       public            postgres    false    229         �           2606    24703 "   pelicula_actor pelicula_actor_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.pelicula_actor
    ADD CONSTRAINT pelicula_actor_pkey PRIMARY KEY (id_pelicula, id_actor);
 L   ALTER TABLE ONLY public.pelicula_actor DROP CONSTRAINT pelicula_actor_pkey;
       public            postgres    false    230    230         �           2606    24670    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    221         �           2606    24684    prestamos prestamos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_pkey PRIMARY KEY (id_prestamo);
 B   ALTER TABLE ONLY public.prestamos DROP CONSTRAINT prestamos_pkey;
       public            postgres    false    225         �           2606    24647    socio socio_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.socio
    ADD CONSTRAINT socio_pkey PRIMARY KEY (id_socio);
 :   ALTER TABLE ONLY public.socio DROP CONSTRAINT socio_pkey;
       public            postgres    false    215         �           2606    24719    cintas cintas_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cintas
    ADD CONSTRAINT cintas_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 H   ALTER TABLE ONLY public.cintas DROP CONSTRAINT cintas_id_pelicula_fkey;
       public          postgres    false    3230    221    223         �           2606    24734 *   devoluciones devoluciones_id_prestamo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.devoluciones
    ADD CONSTRAINT devoluciones_id_prestamo_fkey FOREIGN KEY (id_prestamo) REFERENCES public.prestamos(id_prestamo);
 T   ALTER TABLE ONLY public.devoluciones DROP CONSTRAINT devoluciones_id_prestamo_fkey;
       public          postgres    false    227    225    3234         �           2606    24744 *   lista_espera lista_espera_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lista_espera
    ADD CONSTRAINT lista_espera_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 T   ALTER TABLE ONLY public.lista_espera DROP CONSTRAINT lista_espera_id_pelicula_fkey;
       public          postgres    false    221    3230    229         �           2606    24739 '   lista_espera lista_espera_id_socio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.lista_espera
    ADD CONSTRAINT lista_espera_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socio(id_socio);
 Q   ALTER TABLE ONLY public.lista_espera DROP CONSTRAINT lista_espera_id_socio_fkey;
       public          postgres    false    215    3224    229         �           2606    24709 +   pelicula_actor pelicula_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula_actor
    ADD CONSTRAINT pelicula_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 U   ALTER TABLE ONLY public.pelicula_actor DROP CONSTRAINT pelicula_actor_id_actor_fkey;
       public          postgres    false    230    3228    219         �           2606    24704 .   pelicula_actor pelicula_actor_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula_actor
    ADD CONSTRAINT pelicula_actor_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 X   ALTER TABLE ONLY public.pelicula_actor DROP CONSTRAINT pelicula_actor_id_pelicula_fkey;
       public          postgres    false    230    221    3230         �           2606    24714    pelicula pelicula_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_director_fkey FOREIGN KEY (director) REFERENCES public.director(id_director);
 I   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_director_fkey;
       public          postgres    false    217    221    3226         �           2606    24729 !   prestamos prestamos_id_cinta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_id_cinta_fkey FOREIGN KEY (id_cinta) REFERENCES public.cintas(id_cinta);
 K   ALTER TABLE ONLY public.prestamos DROP CONSTRAINT prestamos_id_cinta_fkey;
       public          postgres    false    3232    223    225         �           2606    24724 !   prestamos prestamos_id_socio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socio(id_socio);
 K   ALTER TABLE ONLY public.prestamos DROP CONSTRAINT prestamos_id_socio_fkey;
       public          postgres    false    215    3224    225                                                              3397.dat                                                                                            0000600 0004000 0002000 00000000130 14532236721 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Elijah Wood
2	Matthew McConaughey
3	Leonardo DiCaprio
4	Tom Hanks
5	Keanu Reeves
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                        3401.dat                                                                                            0000600 0004000 0002000 00000000221 14532236721 0014241 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	5	2023-10-15	2023-10-05
2	2	3	2023-10-20	2023-09-28
3	3	4	2023-10-10	2023-09-15
4	4	1	2023-10-25	2023-10-10
5	5	2	2023-10-12	2023-09-30
\.


                                                                                                                                                                                                                                                                                                                                                                               3405.dat                                                                                            0000600 0004000 0002000 00000000043 14532236721 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	2023-10-15
2	2	2023-10-20
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             3395.dat                                                                                            0000600 0004000 0002000 00000000135 14532236721 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Peter Jackson
2	Christopher Nolan
3	James Cameron
4	Steven Spielberg
5	Lana Wachowski
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                   3407.dat                                                                                            0000600 0004000 0002000 00000000047 14532236721 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	3	2023-10-05
2	2	5	2023-09-28
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         3399.dat                                                                                            0000600 0004000 0002000 00000000350 14532236721 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	El Señor de los Anillos: La Comunidad del Anillo	Aventura	1	{1,2,3}	1
2	Interestelar	Ciencia Ficción	2	{4,5,6}	2
3	Titanic	Romance	3	{7,8,9}	3
4	Jurassic Park	Acción	4	{10,11,12}	4
5	Matrix	Ciencia Ficción	5	{13,14,15}	5
\.


                                                                                                                                                                                                                                                                                        3408.dat                                                                                            0000600 0004000 0002000 00000000005 14532236721 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3403.dat                                                                                            0000600 0004000 0002000 00000000132 14532236721 0014244 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2023-10-05
2	2	2	2023-09-28
3	3	3	2023-09-15
4	4	4	2023-10-10
5	5	5	2023-09-30
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                      3393.dat                                                                                            0000600 0004000 0002000 00000000446 14532236721 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Juan Pérez	Calle 123, Ciudad Uno	+503 23123223
2	María Rodríguez	Avenida Principal, Ciudad Dos	+1-987-654-3210
3	Carlos Sánchez	Carrera 45, Ciudad Tres	+502 32335876
4	Laura Gómez	Avenida Central, Ciudad Cuatro	+504 43789854
5	Pedro González	Calle 67, Ciudad Cinco	+1-333-333-3333
\.


                                                                                                                                                                                                                          restore.sql                                                                                         0000600 0004000 0002000 00000042117 14532236721 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE blockbuster;
--
-- Name: blockbuster; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE blockbuster WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_El Salvador.1252';


ALTER DATABASE blockbuster OWNER TO postgres;

\connect blockbuster

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: genero_pelicula; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE public.genero_pelicula AS ENUM (
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


ALTER TYPE public.genero_pelicula OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(255) NOT NULL
);


ALTER TABLE public.actor OWNER TO postgres;

--
-- Name: actor_id_actor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.actor_id_actor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actor_id_actor_seq OWNER TO postgres;

--
-- Name: actor_id_actor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.actor_id_actor_seq OWNED BY public.actor.id_actor;


--
-- Name: cintas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cintas (
    id_cinta integer NOT NULL,
    id_pelicula integer NOT NULL,
    cantidad integer NOT NULL,
    ultima_devolucion date,
    ultimo_prestamo date
);


ALTER TABLE public.cintas OWNER TO postgres;

--
-- Name: cintas_id_cinta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cintas_id_cinta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cintas_id_cinta_seq OWNER TO postgres;

--
-- Name: cintas_id_cinta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cintas_id_cinta_seq OWNED BY public.cintas.id_cinta;


--
-- Name: devoluciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.devoluciones (
    id_devolucion integer NOT NULL,
    id_prestamo integer NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.devoluciones OWNER TO postgres;

--
-- Name: devoluciones_id_devolucion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.devoluciones_id_devolucion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.devoluciones_id_devolucion_seq OWNER TO postgres;

--
-- Name: devoluciones_id_devolucion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.devoluciones_id_devolucion_seq OWNED BY public.devoluciones.id_devolucion;


--
-- Name: director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(255) NOT NULL
);


ALTER TABLE public.director OWNER TO postgres;

--
-- Name: director_id_director_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.director_id_director_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.director_id_director_seq OWNER TO postgres;

--
-- Name: director_id_director_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.director_id_director_seq OWNED BY public.director.id_director;


--
-- Name: lista_espera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lista_espera (
    id_lista_espera integer NOT NULL,
    id_socio integer NOT NULL,
    id_pelicula integer NOT NULL,
    fecha_solicitud date NOT NULL
);


ALTER TABLE public.lista_espera OWNER TO postgres;

--
-- Name: lista_espera_id_lista_espera_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lista_espera_id_lista_espera_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lista_espera_id_lista_espera_seq OWNER TO postgres;

--
-- Name: lista_espera_id_lista_espera_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lista_espera_id_lista_espera_seq OWNED BY public.lista_espera.id_lista_espera;


--
-- Name: pelicula; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    titulo character varying(255) NOT NULL,
    genero public.genero_pelicula,
    director integer,
    actores integer[],
    id_cinta integer
);


ALTER TABLE public.pelicula OWNER TO postgres;

--
-- Name: pelicula_actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pelicula_actor (
    id_pelicula integer NOT NULL,
    id_actor integer NOT NULL
);


ALTER TABLE public.pelicula_actor OWNER TO postgres;

--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pelicula_id_pelicula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelicula_id_pelicula_seq OWNER TO postgres;

--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pelicula_id_pelicula_seq OWNED BY public.pelicula.id_pelicula;


--
-- Name: prestamos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prestamos (
    id_prestamo integer NOT NULL,
    id_socio integer NOT NULL,
    id_cinta integer NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.prestamos OWNER TO postgres;

--
-- Name: prestamos_id_prestamo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prestamos_id_prestamo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prestamos_id_prestamo_seq OWNER TO postgres;

--
-- Name: prestamos_id_prestamo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prestamos_id_prestamo_seq OWNED BY public.prestamos.id_prestamo;


--
-- Name: socio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socio (
    id_socio integer NOT NULL,
    nombre character varying(255) NOT NULL,
    direccion character varying(255) NOT NULL,
    telefono character varying(255) NOT NULL
);


ALTER TABLE public.socio OWNER TO postgres;

--
-- Name: socio_id_socio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socio_id_socio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socio_id_socio_seq OWNER TO postgres;

--
-- Name: socio_id_socio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socio_id_socio_seq OWNED BY public.socio.id_socio;


--
-- Name: actor id_actor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actor ALTER COLUMN id_actor SET DEFAULT nextval('public.actor_id_actor_seq'::regclass);


--
-- Name: cintas id_cinta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cintas ALTER COLUMN id_cinta SET DEFAULT nextval('public.cintas_id_cinta_seq'::regclass);


--
-- Name: devoluciones id_devolucion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devoluciones ALTER COLUMN id_devolucion SET DEFAULT nextval('public.devoluciones_id_devolucion_seq'::regclass);


--
-- Name: director id_director; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.director ALTER COLUMN id_director SET DEFAULT nextval('public.director_id_director_seq'::regclass);


--
-- Name: lista_espera id_lista_espera; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_espera ALTER COLUMN id_lista_espera SET DEFAULT nextval('public.lista_espera_id_lista_espera_seq'::regclass);


--
-- Name: pelicula id_pelicula; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula ALTER COLUMN id_pelicula SET DEFAULT nextval('public.pelicula_id_pelicula_seq'::regclass);


--
-- Name: prestamos id_prestamo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos ALTER COLUMN id_prestamo SET DEFAULT nextval('public.prestamos_id_prestamo_seq'::regclass);


--
-- Name: socio id_socio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio ALTER COLUMN id_socio SET DEFAULT nextval('public.socio_id_socio_seq'::regclass);


--
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actor (id_actor, nombre) FROM stdin;
\.
COPY public.actor (id_actor, nombre) FROM '$$PATH$$/3397.dat';

--
-- Data for Name: cintas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cintas (id_cinta, id_pelicula, cantidad, ultima_devolucion, ultimo_prestamo) FROM stdin;
\.
COPY public.cintas (id_cinta, id_pelicula, cantidad, ultima_devolucion, ultimo_prestamo) FROM '$$PATH$$/3401.dat';

--
-- Data for Name: devoluciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.devoluciones (id_devolucion, id_prestamo, fecha) FROM stdin;
\.
COPY public.devoluciones (id_devolucion, id_prestamo, fecha) FROM '$$PATH$$/3405.dat';

--
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.director (id_director, nombre) FROM stdin;
\.
COPY public.director (id_director, nombre) FROM '$$PATH$$/3395.dat';

--
-- Data for Name: lista_espera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lista_espera (id_lista_espera, id_socio, id_pelicula, fecha_solicitud) FROM stdin;
\.
COPY public.lista_espera (id_lista_espera, id_socio, id_pelicula, fecha_solicitud) FROM '$$PATH$$/3407.dat';

--
-- Data for Name: pelicula; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelicula (id_pelicula, titulo, genero, director, actores, id_cinta) FROM stdin;
\.
COPY public.pelicula (id_pelicula, titulo, genero, director, actores, id_cinta) FROM '$$PATH$$/3399.dat';

--
-- Data for Name: pelicula_actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pelicula_actor (id_pelicula, id_actor) FROM stdin;
\.
COPY public.pelicula_actor (id_pelicula, id_actor) FROM '$$PATH$$/3408.dat';

--
-- Data for Name: prestamos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prestamos (id_prestamo, id_socio, id_cinta, fecha) FROM stdin;
\.
COPY public.prestamos (id_prestamo, id_socio, id_cinta, fecha) FROM '$$PATH$$/3403.dat';

--
-- Data for Name: socio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socio (id_socio, nombre, direccion, telefono) FROM stdin;
\.
COPY public.socio (id_socio, nombre, direccion, telefono) FROM '$$PATH$$/3393.dat';

--
-- Name: actor_id_actor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.actor_id_actor_seq', 5, true);


--
-- Name: cintas_id_cinta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cintas_id_cinta_seq', 5, true);


--
-- Name: devoluciones_id_devolucion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.devoluciones_id_devolucion_seq', 2, true);


--
-- Name: director_id_director_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.director_id_director_seq', 5, true);


--
-- Name: lista_espera_id_lista_espera_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lista_espera_id_lista_espera_seq', 2, true);


--
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 5, true);


--
-- Name: prestamos_id_prestamo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prestamos_id_prestamo_seq', 5, true);


--
-- Name: socio_id_socio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socio_id_socio_seq', 5, true);


--
-- Name: actor actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);


--
-- Name: cintas cintas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cintas
    ADD CONSTRAINT cintas_pkey PRIMARY KEY (id_cinta);


--
-- Name: devoluciones devoluciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devoluciones
    ADD CONSTRAINT devoluciones_pkey PRIMARY KEY (id_devolucion);


--
-- Name: director director_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);


--
-- Name: lista_espera lista_espera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_espera
    ADD CONSTRAINT lista_espera_pkey PRIMARY KEY (id_lista_espera);


--
-- Name: pelicula_actor pelicula_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula_actor
    ADD CONSTRAINT pelicula_actor_pkey PRIMARY KEY (id_pelicula, id_actor);


--
-- Name: pelicula pelicula_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);


--
-- Name: prestamos prestamos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_pkey PRIMARY KEY (id_prestamo);


--
-- Name: socio socio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socio
    ADD CONSTRAINT socio_pkey PRIMARY KEY (id_socio);


--
-- Name: cintas cintas_id_pelicula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cintas
    ADD CONSTRAINT cintas_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);


--
-- Name: devoluciones devoluciones_id_prestamo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.devoluciones
    ADD CONSTRAINT devoluciones_id_prestamo_fkey FOREIGN KEY (id_prestamo) REFERENCES public.prestamos(id_prestamo);


--
-- Name: lista_espera lista_espera_id_pelicula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_espera
    ADD CONSTRAINT lista_espera_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);


--
-- Name: lista_espera lista_espera_id_socio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lista_espera
    ADD CONSTRAINT lista_espera_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socio(id_socio);


--
-- Name: pelicula_actor pelicula_actor_id_actor_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula_actor
    ADD CONSTRAINT pelicula_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);


--
-- Name: pelicula_actor pelicula_actor_id_pelicula_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula_actor
    ADD CONSTRAINT pelicula_actor_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);


--
-- Name: pelicula pelicula_director_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_director_fkey FOREIGN KEY (director) REFERENCES public.director(id_director);


--
-- Name: prestamos prestamos_id_cinta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_id_cinta_fkey FOREIGN KEY (id_cinta) REFERENCES public.cintas(id_cinta);


--
-- Name: prestamos prestamos_id_socio_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prestamos
    ADD CONSTRAINT prestamos_id_socio_fkey FOREIGN KEY (id_socio) REFERENCES public.socio(id_socio);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 