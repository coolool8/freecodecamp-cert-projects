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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_id integer NOT NULL,
    name character varying(30),
    scale integer,
    full_desc text NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_billions numeric(3,1),
    type text,
    size numeric(5,2),
    black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    orbit_days integer,
    planet_id integer,
    phase text,
    diameter integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    supports_life boolean,
    star_id integer,
    diameter integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    planet_amount integer,
    galaxy_id integer,
    diameter integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (1, 'galaxy', 100000000, 'a collection of stars, usually around a black hole');
INSERT INTO public.description VALUES (2, 'star', 100, 'luminous spheroid of plasma held together by gravity');
INSERT INTO public.description VALUES (3, 'planet', 1, 'A celestial body moving in an eliptical orbit around a star');
INSERT INTO public.description VALUES (4, 'moon', 0, 'A celestial body moving in an eliptical orbit around a planet');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 4.5, 'spiral', 152.00, true);
INSERT INTO public.galaxy VALUES (2, 'hoags', 15.0, 'ring', 100.00, true);
INSERT INTO public.galaxy VALUES (3, 'LMS', 5.0, 'satellite', 160.00, true);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 10.0, 'starburst', 37.00, true);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 10.0, 'spiral', 170.00, true);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 15.0, 'spiral', 60.00, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 29, 1, 'wane', 3000);
INSERT INTO public.moon VALUES (2, 'moon2', 30, 1, 'crescent', 2000);
INSERT INTO public.moon VALUES (3, 'moon3', 20, 1, 'crescent', 1500);
INSERT INTO public.moon VALUES (4, 'moon4', 28, 1, 'waxing', 1500);
INSERT INTO public.moon VALUES (5, 'moon5', 31, 2, 'waxing', 1500);
INSERT INTO public.moon VALUES (6, 'moon6', 30, 2, 'waning', 1500);
INSERT INTO public.moon VALUES (7, 'moon7', 25, 3, 'waning', 2000);
INSERT INTO public.moon VALUES (8, 'moon8', 26, 3, 'full moon', 2200);
INSERT INTO public.moon VALUES (9, 'moon9', 26, 4, 'new', 2300);
INSERT INTO public.moon VALUES (11, 'moon11', 40, 4, 'waxing', 1300);
INSERT INTO public.moon VALUES (12, 'moon12', 35, 4, 'gibbous', 1300);
INSERT INTO public.moon VALUES (13, 'moon13', 28, 4, 'quarter', 1800);
INSERT INTO public.moon VALUES (14, 'moon14', 28, 5, 'quarter', 1900);
INSERT INTO public.moon VALUES (15, 'moon15', 30, 6, 'young', 1900);
INSERT INTO public.moon VALUES (16, 'moon16', 31, 6, 'full', 1900);
INSERT INTO public.moon VALUES (17, 'moon17', 31, 7, 'new', 1900);
INSERT INTO public.moon VALUES (18, 'moon18', 25, 7, 'new', 1400);
INSERT INTO public.moon VALUES (19, 'moon19', 27, 7, 'new', 1400);
INSERT INTO public.moon VALUES (20, 'moon20', 34, 8, 'gibbous', 1200);
INSERT INTO public.moon VALUES (10, 'moon10', 28, 4, 'new', 1000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', true, 1, 10000);
INSERT INTO public.planet VALUES (2, 'planet2', false, 1, 20000);
INSERT INTO public.planet VALUES (3, 'planet3', false, 1, 15000);
INSERT INTO public.planet VALUES (4, 'planet4', false, 2, 15000);
INSERT INTO public.planet VALUES (5, 'planet5', false, 2, 14000);
INSERT INTO public.planet VALUES (6, 'planet6', false, 2, 19000);
INSERT INTO public.planet VALUES (7, 'planet7', false, 3, 18500);
INSERT INTO public.planet VALUES (8, 'planet8', false, 3, 9000);
INSERT INTO public.planet VALUES (9, 'planet9', false, 3, 25000);
INSERT INTO public.planet VALUES (10, 'planet10', false, 4, 17000);
INSERT INTO public.planet VALUES (11, 'planet11', false, 4, 12000);
INSERT INTO public.planet VALUES (12, 'planet12', false, 4, 7000);
INSERT INTO public.planet VALUES (13, 'planet13', false, 5, 32000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 3, 1, 1400);
INSERT INTO public.star VALUES (2, 'star2', 3, 1, 1000);
INSERT INTO public.star VALUES (3, 'star3', 3, 2, 1000);
INSERT INTO public.star VALUES (4, 'star4', 3, 2, 1000);
INSERT INTO public.star VALUES (5, 'star5', 1, 2, 1000);
INSERT INTO public.star VALUES (6, 'star6', 0, 2, 2000);


--
-- Name: description descprimarykey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT descprimarykey PRIMARY KEY (description_id);


--
-- Name: galaxy indexu; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT indexu UNIQUE (galaxy_id);


--
-- Name: star indexu2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT indexu2 UNIQUE (star_id);


--
-- Name: planet indexu3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT indexu3 UNIQUE (planet_id);


--
-- Name: moon indexumoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT indexumoon UNIQUE (moon_id);


--
-- Name: galaxy nnuname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT nnuname UNIQUE (name);


--
-- Name: galaxy primarykey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT primarykey PRIMARY KEY (galaxy_id);


--
-- Name: moon primarykeymoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT primarykeymoon PRIMARY KEY (moon_id);


--
-- Name: planet primarykeyplanet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT primarykeyplanet PRIMARY KEY (planet_id);


--
-- Name: star primarykeystar; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT primarykeystar PRIMARY KEY (star_id);


--
-- Name: description unique_description; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT unique_description UNIQUE (full_desc);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


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
