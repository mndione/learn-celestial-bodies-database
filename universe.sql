--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    description text,
    age integer,
    is_spherical boolean
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
    name character varying(50) NOT NULL,
    planet_id integer,
    age integer,
    distance_from_earth numeric(12,2)
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
    name character varying(50) NOT NULL,
    distance_from_earth numeric(12,2),
    age integer,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    galaxy_id integer,
    distance_from_earth numeric(12,2)
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
-- Name: work; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.work (
    work_id integer NOT NULL,
    name character varying(100) NOT NULL,
    object integer,
    object_tye character(1)
);


ALTER TABLE public.work OWNER TO freecodecamp;

--
-- Name: work_work_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.work_work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_work_id_seq OWNER TO freecodecamp;

--
-- Name: work_work_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.work_work_id_seq OWNED BY public.work.work_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: work work_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.work ALTER COLUMN work_id SET DEFAULT nextval('public.work_work_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'WHIRPOL', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'UFO', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Tadpole', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Starfish', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sculptor', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Deimos', 3, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Amalthea', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Callisto', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Europa', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Ganymede', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Io', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Enceladus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Hyperion', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Iapetus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Mimas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Phoebe', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Titania', 7, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Umbriel', 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Mars', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Neptune', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Venus', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Wolf b', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'Wolf c', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, 'Wolf d', NULL, NULL, NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'PROXIMA', NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'LUHMAN', NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'WOLF', NULL, 1, NULL);
INSERT INTO public.star VALUES (5, 'ROSS 154', NULL, 1, NULL);
INSERT INTO public.star VALUES (6, 'ROSS 128', NULL, 1, NULL);


--
-- Data for Name: work; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.work VALUES (1, 'Mission 1 on Moon', 1, 'M');
INSERT INTO public.work VALUES (2, 'Work 2 onstar', 1, 'S');
INSERT INTO public.work VALUES (3, 'Work 3', 1, 'M');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: work_work_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.work_work_id_seq', 3, true);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: work work_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_pkey PRIMARY KEY (work_id);


--
-- Name: work work_title; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.work
    ADD CONSTRAINT work_title UNIQUE (name);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

