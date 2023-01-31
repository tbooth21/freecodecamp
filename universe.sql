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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    revolves_around text,
    distance_from_earth integer,
    danger boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    fourth_column integer,
    fifth_column boolean
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
    name character varying(30) NOT NULL,
    planet_id integer,
    moon_id integer NOT NULL,
    fourth_column boolean,
    fifth_column integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(8,2),
    description text,
    year_discovered integer,
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
    galaxy_id integer,
    fourth_column integer,
    fifth_column text
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Asteroid1', NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (2, 'Asteroid2', NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (3, 'Asteroid3', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Comet', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', NULL, 2, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', NULL, 3, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon4', NULL, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon5', NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon6', NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon7', NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon8', NULL, 8, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon9', NULL, 9, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon10', NULL, 10, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon11', NULL, 11, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon12', NULL, 12, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon13', NULL, 13, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon14', NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon15', NULL, 15, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon16', NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon17', NULL, 17, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon18', NULL, 18, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon19', NULL, 19, NULL, NULL);
INSERT INTO public.moon VALUES ('Moon20', NULL, 20, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet 10', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet 11', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet 12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Star2', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star3', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star4', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star5', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star6', NULL, NULL, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroid asteroid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_id PRIMARY KEY (asteroid_id);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: galaxy uq_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_id UNIQUE (galaxy_id);


--
-- Name: planet uq_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_id UNIQUE (planet_id);


--
-- Name: star uq_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_id UNIQUE (star_id);


--
-- Name: moon fkey_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fkey_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fkey_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fkey_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

