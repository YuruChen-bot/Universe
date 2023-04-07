--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age integer,
    distance_from_earth numeric(4,1),
    has_life boolean,
    name character varying(20) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    has_life boolean,
    planet_id integer,
    age integer,
    name character varying(20) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_type text,
    has_life boolean,
    distance_from_earch numeric(4,1),
    age integer,
    star_id integer,
    name character varying(20) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: small_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.small_moon (
    small_moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer
);


ALTER TABLE public.small_moon OWNER TO freecodecamp;

--
-- Name: small_moon_small_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.small_moon_small_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.small_moon_small_moon_id_seq OWNER TO freecodecamp;

--
-- Name: small_moon_small_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.small_moon_small_moon_id_seq OWNED BY public.small_moon.small_moon_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    distance_from_earch numeric(4,1),
    age integer,
    name character varying(20) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: small_moon small_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.small_moon ALTER COLUMN small_moon_id SET DEFAULT nextval('public.small_moon_small_moon_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 'g1');
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 'g2');
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, 'g3');
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 'g4');
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 'g5');
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 'g6');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 1, NULL, 'm1');
INSERT INTO public.moon VALUES (2, NULL, 2, NULL, 'm2');
INSERT INTO public.moon VALUES (3, NULL, 3, NULL, 'm3');
INSERT INTO public.moon VALUES (4, NULL, 4, NULL, 'm4');
INSERT INTO public.moon VALUES (5, NULL, 5, NULL, 'm5');
INSERT INTO public.moon VALUES (6, NULL, 6, NULL, 'm6');
INSERT INTO public.moon VALUES (7, NULL, 1, NULL, 'm7');
INSERT INTO public.moon VALUES (8, NULL, 2, NULL, 'm8');
INSERT INTO public.moon VALUES (9, NULL, 3, NULL, 'm9');
INSERT INTO public.moon VALUES (10, NULL, 4, NULL, 'm10');
INSERT INTO public.moon VALUES (11, NULL, 5, NULL, 'm11');
INSERT INTO public.moon VALUES (12, NULL, 6, NULL, 'm12');
INSERT INTO public.moon VALUES (13, NULL, 7, NULL, 'm13');
INSERT INTO public.moon VALUES (14, NULL, 8, NULL, 'm14');
INSERT INTO public.moon VALUES (15, NULL, 1, NULL, 'm15');
INSERT INTO public.moon VALUES (16, NULL, 2, NULL, 'm16');
INSERT INTO public.moon VALUES (17, NULL, 3, NULL, 'm17');
INSERT INTO public.moon VALUES (18, NULL, 4, NULL, 'm18');
INSERT INTO public.moon VALUES (19, NULL, 5, NULL, 'm19');
INSERT INTO public.moon VALUES (20, NULL, 6, NULL, 'm20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, 1, 'p1');
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, 2, 'p2');
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, 3, 'p3');
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, 4, 'p4');
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, 5, 'p5');
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, 6, 'p6');
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, 1, 'p7');
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, 2, 'p8');
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, 3, 'p9');
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, 4, 'p10');
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, 5, 'p11');
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, 6, 'p12');


--
-- Data for Name: small_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.small_moon VALUES (1, 'sm1', NULL);
INSERT INTO public.small_moon VALUES (2, 'sm2', NULL);
INSERT INTO public.small_moon VALUES (3, 'sm3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, NULL, NULL, 's1');
INSERT INTO public.star VALUES (2, 2, NULL, NULL, 's2');
INSERT INTO public.star VALUES (3, 3, NULL, NULL, 's3');
INSERT INTO public.star VALUES (4, 4, NULL, NULL, 's4');
INSERT INTO public.star VALUES (5, 5, NULL, NULL, 's5');
INSERT INTO public.star VALUES (6, 6, NULL, NULL, 's6');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: small_moon_small_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.small_moon_small_moon_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: small_moon small_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.small_moon
    ADD CONSTRAINT small_moon_name_key UNIQUE (name);


--
-- Name: small_moon small_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.small_moon
    ADD CONSTRAINT small_moon_pkey PRIMARY KEY (small_moon_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

