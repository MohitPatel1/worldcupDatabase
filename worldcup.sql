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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (97, 2018, 'Final', 335, 336, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 337, 338, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 336, 338, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 335, 337, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 336, 339, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 338, 340, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 337, 341, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 335, 342, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 338, 343, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 340, 344, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 337, 345, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 341, 346, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 336, 347, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 339, 348, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 342, 349, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 335, 350, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 351, 350, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 352, 341, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 350, 352, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 351, 341, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 352, 353, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 350, 337, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 341, 343, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 351, 335, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 341, 354, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 343, 342, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 335, 355, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 351, 356, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 352, 346, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 353, 357, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 350, 344, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 337, 358, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (335, 'France');
INSERT INTO public.teams VALUES (336, 'Croatia');
INSERT INTO public.teams VALUES (337, 'Belgium');
INSERT INTO public.teams VALUES (338, 'England');
INSERT INTO public.teams VALUES (339, 'Russia');
INSERT INTO public.teams VALUES (340, 'Sweden');
INSERT INTO public.teams VALUES (341, 'Brazil');
INSERT INTO public.teams VALUES (342, 'Uruguay');
INSERT INTO public.teams VALUES (343, 'Colombia');
INSERT INTO public.teams VALUES (344, 'Switzerland');
INSERT INTO public.teams VALUES (345, 'Japan');
INSERT INTO public.teams VALUES (346, 'Mexico');
INSERT INTO public.teams VALUES (347, 'Denmark');
INSERT INTO public.teams VALUES (348, 'Spain');
INSERT INTO public.teams VALUES (349, 'Portugal');
INSERT INTO public.teams VALUES (350, 'Argentina');
INSERT INTO public.teams VALUES (351, 'Germany');
INSERT INTO public.teams VALUES (352, 'Netherlands');
INSERT INTO public.teams VALUES (353, 'Costa Rica');
INSERT INTO public.teams VALUES (354, 'Chile');
INSERT INTO public.teams VALUES (355, 'Nigeria');
INSERT INTO public.teams VALUES (356, 'Algeria');
INSERT INTO public.teams VALUES (357, 'Greece');
INSERT INTO public.teams VALUES (358, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 358, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


