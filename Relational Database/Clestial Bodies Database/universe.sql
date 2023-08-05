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
-- Name: celestial_body; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body (
    celestial_body_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    size numeric(5,2),
    mass numeric(5,2),
    is_active boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.celestial_body OWNER TO freecodecamp;

--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_body_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_body_id_seq OWNED BY public.celestial_body.celestial_body_id;


--
-- Name: celestial_body_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_galaxy_id_seq OWNED BY public.celestial_body.galaxy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    size numeric(5,2),
    distance_from_earth numeric(5,2),
    is_active boolean
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
    size numeric(5,2),
    mass numeric(5,2),
    distance_from_planet numeric(5,2),
    orbital_period numeric(5,2),
    is_satellite boolean,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50),
    size numeric(5,2),
    mass numeric(5,2),
    distance_from_star numeric(5,2),
    orbital_period numeric(5,2),
    is_habitable boolean,
    star_id integer,
    planet_position integer NOT NULL,
    random_number integer
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
    name character varying(100) NOT NULL,
    spectral_type character varying(50),
    luminosity numeric(5,2),
    mass numeric(5,2),
    distance_from_earth numeric(5,2),
    is_active boolean,
    temperature numeric(5,2),
    galaxy_id integer
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
-- Name: celestial_body celestial_body_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body ALTER COLUMN celestial_body_id SET DEFAULT nextval('public.celestial_body_body_id_seq'::regclass);


--
-- Name: celestial_body galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body ALTER COLUMN galaxy_id SET DEFAULT nextval('public.celestial_body_galaxy_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: celestial_body; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body VALUES (1, 'Sun', 'Star', 934.44, 888.99, true, 1);
INSERT INTO public.celestial_body VALUES (2, 'Earth', 'Planet', 827.00, 594.12, true, 1);
INSERT INTO public.celestial_body VALUES (3, 'Luna', 'Moon', 347.80, 239.46, false, 1);
INSERT INTO public.celestial_body VALUES (4, 'Halley', 'Comet', 11.00, 112.78, true, 1);
INSERT INTO public.celestial_body VALUES (5, 'Vesta', 'Asteroid', 535.40, 259.00, true, 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milk is a barred spiral galaxy that we are part of', 100.00, 300.00, true);
INSERT INTO public.galaxy VALUES (2, 'Silky Way', 'The Silky way is imaginative galaxy named and made by me', 172.32, 679.00, true);
INSERT INTO public.galaxy VALUES (3, 'The Grand Line', 'The Grand Line is where, One Piece is happening', 235.44, 453.11, true);
INSERT INTO public.galaxy VALUES (4, 'Z line', 'Dragon ball galaxy', 679.00, 999.65, true);
INSERT INTO public.galaxy VALUES (5, 'Alchamey line', 'FullMetal Alchamist are here', 552.00, 111.11, true);
INSERT INTO public.galaxy VALUES (6, 'Ninja Way', 'You guessed its the ninja way -Naruto and gang here and Sakura sucks', 281.99, 662.13, true);
INSERT INTO public.galaxy VALUES (7, 'Demon Way', 'Demon slayer galaxy', 469.75, 234.44, true);
INSERT INTO public.galaxy VALUES (8, 'WarHammer 40k', 'this is the galaxy owned by GW - everything is expensive here', 989.99, 999.99, true);
INSERT INTO public.galaxy VALUES (9, 'Akhand-Bharat', 'This galaxy has Akahand Bharat, Jai Shri Krishna, Jai Shri Ramji, Jai Shri Sita MATA, Jai Shri Hanuman ji', 999.99, 999.99, true);
INSERT INTO public.galaxy VALUES (10, 'the programmers galaxy', 'Here no coorporate bullshittery, every fresher gets a job, no exaggerated JDs', 777.99, 888.91, true);
INSERT INTO public.galaxy VALUES (11, 'the gammer way', 'Dreamers Galaxy', 123.32, 444.44, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (37, 'Luna', 347.80, 7.35, 33.84, 27.32, true, 1);
INSERT INTO public.moon VALUES (38, 'Phobos', 22.00, 0.01, 9.38, 0.32, true, 2);
INSERT INTO public.moon VALUES (39, 'Deimos', 12.40, 0.02, 23.46, 1.23, true, 2);
INSERT INTO public.moon VALUES (40, 'Gnsd', 13.34, 43.21, 1.23, 0.56, true, 5);
INSERT INTO public.moon VALUES (41, 'Callisto', 482.00, 148.00, 170.40, 7.15, true, 5);
INSERT INTO public.moon VALUES (42, 'Europa', 312.12, 48.00, 671.00, 3.55, true, 5);
INSERT INTO public.moon VALUES (43, 'Io', 312.23, 44.09, 1.23, 45.01, true, 5);
INSERT INTO public.moon VALUES (44, 'Titan', 515.00, 132.23, 122.98, 15.96, true, 6);
INSERT INTO public.moon VALUES (45, 'Rhea', 152.54, 23.12, 527.00, 4.52, true, 6);
INSERT INTO public.moon VALUES (46, 'Iapetus', 146.99, 18.36, 356.88, 8.43, true, 6);
INSERT INTO public.moon VALUES (47, 'Dione', 112.34, 10.43, 23.77, 2.74, true, 6);
INSERT INTO public.moon VALUES (48, 'Tethys', 106.23, 6.17, 29.40, 1.89, true, 6);
INSERT INTO public.moon VALUES (49, 'Enceladus', 504.20, 1.08, 23.78, 1.37, true, 6);
INSERT INTO public.moon VALUES (50, 'Miranda', 256.98, 0.66, 0.77, 0.88, true, 7);
INSERT INTO public.moon VALUES (51, 'Ariel', 115.78, 23.01, 10.34, 11.22, true, 7);
INSERT INTO public.moon VALUES (52, 'Umbra', 143.11, 22.33, 33.11, 55.12, true, 7);
INSERT INTO public.moon VALUES (53, 'Titania', 178.90, 23.56, 123.45, 0.11, true, 7);
INSERT INTO public.moon VALUES (54, 'Oberon', 11.23, 22.34, 33.45, 44.56, true, 7);
INSERT INTO public.moon VALUES (55, 'Charon', 12.22, 23.33, 34.45, 44.56, true, 7);
INSERT INTO public.moon VALUES (56, 'Nix', 49.70, 0.05, 48.32, 24.85, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 127.00, 5.97, 149.60, 365.23, true, 1, 1, 9876);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 677.00, 0.64, 227.94, 687.12, false, 1, 2, 5463);
INSERT INTO public.planet VALUES (3, 'Venus', 'Terrestrial', 121.04, 4.87, 108.20, 224.70, false, 1, 3, 8765);
INSERT INTO public.planet VALUES (4, 'Neptune', 'Gas Giant', 495.12, 102.00, 495.01, 608.40, false, 2, 1, 4321);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas Gaint', 129.00, 189.00, 778.30, 432.00, false, 2, 2, 5678);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas Gaint', 166.00, 568.11, 147.00, 175.00, false, 2, 3, 7890);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice Giant', 115.00, 568.00, 127.00, 333.11, false, 2, 4, 66654);
INSERT INTO public.planet VALUES (8, 'Mercury', 'Terrestial', 479.00, 0.33, 57.91, 87.97, false, 1, 4, 8874);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf Planet', 237.22, 0.01, 547.00, 905.40, false, 2, 4, 5543);
INSERT INTO public.planet VALUES (10, 'Eris', 'Dwarf Planet', 551.22, 0.02, 110.10, 654.32, false, 2, 4, 112232);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 'Terrestrial', 112.00, 1.27, 4.24, 11.18, true, 3, 1, 5499);
INSERT INTO public.planet VALUES (12, 'Trappist-1 d', 'Terrestrial', 616.00, 0.41, 12.11, 5.84, true, 4, 1, 6657);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 1.00, 1.00, 1.00, true, 577.00, 1);
INSERT INTO public.star VALUES (2, 'KEN', 'G2z', 4.44, 5.21, 4.12, true, 546.00, 2);
INSERT INTO public.star VALUES (3, 'yelo', 'eeds', 56.34, 123.11, 676.32, true, 111.00, 3);
INSERT INTO public.star VALUES (4, 'Deez Nuts', 'unhs', 0.00, 0.00, 0.00, false, 0.00, 4);
INSERT INTO public.star VALUES (5, 'Magic', 'speel', 99.90, 77.70, 55.40, true, 99.00, 5);
INSERT INTO public.star VALUES (6, 'hhh', 'yyt', 199.62, 23.87, 111.65, true, 87.11, 6);
INSERT INTO public.star VALUES (7, 'Hokage', 'Hinata', 111.11, 222.22, 333.33, true, 65.99, 7);
INSERT INTO public.star VALUES (8, 'hhsz', 'uuyt', 123.22, 332.11, 223.11, true, 54.00, 8);
INSERT INTO public.star VALUES (9, 'Shri Vishnu ji', 'Vasudev', 99.99, 99.99, 99.09, true, 99.99, 9);
INSERT INTO public.star VALUES (10, 'chip err', 'ooiu', 516.12, 101.01, 44.04, false, 10.00, 10);
INSERT INTO public.star VALUES (11, 'YT-strimer', 'paid-promotion', 11.00, 22.00, 33.00, true, 99.99, 11);


--
-- Name: celestial_body_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_body_id_seq', 5, true);


--
-- Name: celestial_body_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_galaxy_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 56, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: celestial_body celestial_body_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_name_key UNIQUE (name);


--
-- Name: celestial_body celestial_body_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_pkey PRIMARY KEY (celestial_body_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


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
-- Name: celestial_body celestial_body_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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


